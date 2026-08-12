package com.fdl.service.utilisateur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.fdl.model.utilisateur.Utilisateur;
import com.fdl.repository.utilisateur.UtilisateurRepo;

@Service
public class AuthServ {

    @Autowired
    private UtilisateurRepo utilisateurRepo;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    // public Utilisateur login( String email, String password ){

    //     Utilisateur user = utilisateurRepo.findByEmail(email).orElse(null);

    //     if(user == null){ return null; }

    //     // Vérification du mot de passe BCrypt
    //     boolean passwordCorrect =  passwordEncoder.matches(password, user.getPassword());

    //     if(!passwordCorrect){
    //         return null;
    //     }

    //     return user;
    // }

    public Utilisateur login(String email, String password){
        System.out.println("EMAIL RECU : " + email);

        Utilisateur user = utilisateurRepo.findByEmail(email).orElse(null);

        if(user == null){
            System.out.println("USER NULL");
            return null;
        }

        System.out.println(
            "USER TROUVE : " + user.getEmail()
        );

        System.out.println(
            "HASH : " + user.getPassword()
        );

        boolean result =
                passwordEncoder.matches(
                    password,
                    user.getPassword()
                );

        System.out.println(
            "PASSWORD OK : " + result
        );

        if(!result){
            return null;
        }
        return user;
    }


}