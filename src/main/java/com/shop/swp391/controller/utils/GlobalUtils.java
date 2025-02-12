/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.controller.utils;

import com.shop.swp391.config.GlobalConfig;
import com.shop.swp391.controller.authen.UserGoogleDto;
import com.shop.swp391.entity.User;
import java.util.Random;

/**
 *
 * @author ADMIN
 */
public class GlobalUtils {

    public static int generateOTP(int length) {
        Random rand = new Random();
        StringBuilder otp = new StringBuilder();

        for (int i = 0; i < length; i++) {
            otp.append(rand.nextInt(10));
        }

        return Integer.parseInt(otp.toString());
    }
    
    public static User convertToAccount(UserGoogleDto userGoogleDto) {
        User account = new User();
        account.setEmail(userGoogleDto.getEmail());
        account.setPassword(""); // Set default or encrypted password
        account.setRoleId(GlobalConfig.ROLE_STUDENT); // Default role ID, adjust as needed
//        account.setIsActive(true);
        return account;
    }
}
