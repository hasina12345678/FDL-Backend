package com.fdl.controller.utilisateur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.fdl.dto.LoginRequest;
import com.fdl.dto.LoginResponse;
import com.fdl.model.utilisateur.Utilisateur;
import com.fdl.security.JwtService;
import com.fdl.service.utilisateur.AuthServ;


@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = {"http://localhost:5173", "http://localhost:8080"})
public class AuthCtrl {

    @Autowired
    private AuthServ authServ;

    @Autowired
    private JwtService jwtService;

    @PostMapping("/login")
    public ResponseEntity<?> login( @RequestBody LoginRequest request ){

        Utilisateur user = authServ.login( request.getEmail(), request.getPassword() );

        if(user == null){
            return ResponseEntity.status(401).body("Email ou mot de passe incorrect");
        }

        String token = jwtService.generateToken( user.getEmail() );

        return ResponseEntity.ok( new LoginResponse(token) );

    }

}