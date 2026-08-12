package com.fdl.model.realisation;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "r_programme")
public class Programme {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code", unique = true, length = 30)
    private String code;

    @Column(name = "name", nullable = false, length = 150)
    private String name;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "programme", cascade = CascadeType.ALL, orphanRemoval = false)
    private List<Realisation> realisations = new ArrayList<>();


    public Programme() {
    }

    public Programme(String code, String name, String description) {
        this.code = code;
        this.name = name;
        this.description = description;
    }


    public Long getId() { return id; }
    public String getCode() { return code; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public List<Realisation> getRealisations() { return realisations; }

    public void setId(Long id) { this.id = id; }
    public void setCode(String code) { this.code = code; }
    public void setName(String name) { this.name = name; }
    public void setDescription(String description) { this.description = description; }
    public void setRealisations(List<Realisation> realisations) { this.realisations = realisations; }

}