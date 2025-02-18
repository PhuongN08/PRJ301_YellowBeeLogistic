/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBConnect.DBContext;
import java.util.ArrayList;
import java.util.UUID;
import Model.User;
/**
 *
 * @author regio
 */
public class userDAO extends DBContext {

    public User getUserWithCredential(String credential) {
        User user = null;

        //Get user from database with username or email
        String query = "SELECT *\n"
                + "FROM [YellowBee].[dbo].[user]\n"
                + "WHERE username = ? OR email = ?;";
        try {
            //Replace '?' in query with user credential and execute the statement
            statement = connection.prepareStatement(query);
            statement.setString(1, credential);
            statement.setString(2, credential);
            result = statement.executeQuery();

            //Attempt to get user information from database
            while (result.next()) {
                int userId = result.getInt("user_id");
                String username = result.getString("username");
                String email = result.getString("email");
                String phone = result.getString("phone");
                String address = result.getString("address");               
                int genderId = result.getInt("genderId");
                int accountId = result.getInt("accountid");

                //Build user using lombok 
                user = User.builder()
                        .userId(userId)
                        .username(username)
                        .email(email)
                        .phone(phone)
                        .address(address)                       
                        .genderId(genderId)
                        .accountId(accountId)
                        .build();
            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
