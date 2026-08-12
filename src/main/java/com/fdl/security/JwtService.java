package com.fdl.security;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import io.jsonwebtoken.*;
import io.jsonwebtoken.security.Keys;

import javax.crypto.SecretKey;

import java.util.Date;

@Service
public class JwtService {

    @Value("${jwt.secret}")
    private String secret;

    @Value("${jwt.expiration}")
    private Long expiration;

    private SecretKey getKey(){
        return Keys.hmacShaKeyFor( secret.getBytes() );
    }

    public String generateToken(String email){
        return Jwts.builder()
                .setSubject(email)
                .setIssuedAt( new Date() )
                .setExpiration( new Date( System.currentTimeMillis() + expiration ) )
                .signWith( getKey(), SignatureAlgorithm.HS256 )
                .compact();
    }

    public String extractEmail(String token){

        return Jwts.parserBuilder()
                .setSigningKey( getKey() )
                .build()
                .parseClaimsJws(token)
                .getBody()
                .getSubject();
    }

}