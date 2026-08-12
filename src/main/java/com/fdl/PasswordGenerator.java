// package com.fdl;


// import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


// public class PasswordGenerator {
//     public static void main(String[] args) {
//         BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//         String password = "Fdl@Admin2026#Secure";
//         System.out.println( encoder.encode(password) );
//     }

// }

package com.fdl;


import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


public class PasswordGenerator {


    public static void main(String[] args) {


        BCryptPasswordEncoder encoder =
                new BCryptPasswordEncoder();



        String hash =
        "$2a$10$orLVd2zY4vVLdlmIEnatWOEcJ6uY0n6NtFPzMuFUq.2JuwesUPL4C";



        System.out.println(
            encoder.matches(
                "Fdl@Admin2026#Secure",
                hash
            )
        );


    }

}