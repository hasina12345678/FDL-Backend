package com.fdl.model.actualite;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "a_auteur")
public class Auteur {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nom", nullable = false, length = 100)
    private String nom;

    @Column(name = "prenom", length = 100)
    private String prenom;

    @Column(name = "fonction", length = 150)
    private String fonction;

    @Column(name = "email", length = 150)
    private String email;

    @OneToMany( mappedBy = "auteur", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Actualite> actualites = new ArrayList<>();

    public Auteur() {}

    public Auteur(String nom, String prenom, String fonction, String email) {
        this.nom = nom;
        this.prenom = prenom;
        this.fonction = fonction;
        this.email = email;
    }

    public Long getId() { return id; }
    public String getNom() { return nom; }
    public String getPrenom() { return prenom; }
    public String getFonction() { return fonction; }
    public String getEmail() { return email; }
    public List<Actualite> getActualites() { return actualites; }

    public void setId(Long id) { this.id = id; }
    public void setNom(String nom) { this.nom = nom; }
    public void setPrenom(String prenom) { this.prenom = prenom; }
    public void setFonction(String fonction) { this.fonction = fonction; }
    public void setEmail(String email) { this.email = email; }
    public void setActualites(List<Actualite> actualites) { this.actualites = actualites; }

}