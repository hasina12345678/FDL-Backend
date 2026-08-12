package com.fdl.model.realisation;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "r_categorie")
public class R_Categorie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, unique = true, length = 100)
    private String name;

    @OneToMany(mappedBy = "categorie", cascade = CascadeType.ALL, orphanRemoval = false)
    private List<Realisation> realisations = new ArrayList<>();


    public R_Categorie() {
    }

    public R_Categorie(String name) {
        this.name = name;
    }


    public Long getId() { return id; }
    public String getName() { return name; }
    public List<Realisation> getRealisations() { return realisations; }

    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setRealisations(List<Realisation> realisations) { this.realisations = realisations; }

}