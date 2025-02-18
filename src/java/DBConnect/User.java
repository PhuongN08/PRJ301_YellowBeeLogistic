/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;
import java.time.LocalDate;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class User {

    private int userId;
    private String username;
    private String email;
    private String password;
    private String phone;
    private String address;
    private int genderId;
    private String image;
    private int accountId;
}