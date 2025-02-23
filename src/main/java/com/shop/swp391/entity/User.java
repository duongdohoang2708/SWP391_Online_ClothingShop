/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.entity;

<<<<<<< HEAD
=======
import java.io.Serializable;
import java.util.Date;
>>>>>>> origin/binh
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

<<<<<<< HEAD

=======
>>>>>>> origin/binh
@ToString
@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

<<<<<<< HEAD
public class User {
    private int id;
    private String username;
=======
public class User implements Serializable {
    private int userID;
    private String userName;
>>>>>>> origin/binh
    private String password;
    private String email;
    private String firstName;
    private String lastName;
<<<<<<< HEAD
    private String dob;
    private boolean sex;
    private int roleId;
    private String phone;
    private boolean active;
  
}


=======
    private Date dob;
    private int sex;
    private int role;
    private String phone;
}
>>>>>>> origin/binh
