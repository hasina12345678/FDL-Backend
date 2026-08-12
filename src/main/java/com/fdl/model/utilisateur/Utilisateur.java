package com.fdl.model.utilisateur;

import jakarta.persistence.*;

@Entity
@Table(name = "u_utilisateur")
public class Utilisateur {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nom", nullable = false, length = 100)
    private String nom;

    @Column(name = "email", nullable = false, unique = true, length = 150)
    private String email;

    @Column(name = "password", nullable = false, length = 255)
    private String password;

    public Utilisateur() {}

    public Utilisateur(String nom, String email, String password) {
        this.nom = nom;
        this.email = email;
        this.password = password;
    }

    public Long getId() { return id; }
    public String getNom() { return nom; }
    public String getEmail() { return email; }
    public String getPassword() { return password; }

    public void setId(Long id) { this.id = id; }
    public void setNom(String nom) { this.nom = nom; }
    public void setEmail(String email) { this.email = email; }
    public void setPassword(String password) { this.password = password; }
}