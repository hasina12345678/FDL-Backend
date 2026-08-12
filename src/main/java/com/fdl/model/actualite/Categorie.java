package com.fdl.model.actualite;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "a_categorie")
public class Categorie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "categorie", nullable = false, unique = true, length = 100)
    private String categorie;

    @ManyToMany(mappedBy = "categories", fetch = FetchType.LAZY)
    private List<Actualite> actualites = new ArrayList<>();

    public Categorie() {}

    public Categorie(String categorie) {
        this.categorie = categorie;
    }

    public Long getId() { return id; }
    public String getCategorie() { return categorie; }
    public List<Actualite> getActualites() { return actualites; }

    public void setId(Long id) { this.id = id; }
    public void setCategorie(String categorie) { this.categorie = categorie; }
    public void setActualites(List<Actualite> actualites) { this.actualites = actualites; }

}