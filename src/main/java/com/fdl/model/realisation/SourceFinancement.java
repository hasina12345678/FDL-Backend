package com.fdl.model.realisation;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "r_source_financement")
public class SourceFinancement {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, unique = true, length = 150)
    private String name;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "sourceFinancement", cascade = CascadeType.ALL, orphanRemoval = false)
    private List<Realisation> realisations = new ArrayList<>();

    public SourceFinancement() {
    }

    public SourceFinancement(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public Long getId() { return id; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public List<Realisation> getRealisations() { return realisations; }

    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setDescription(String description) { this.description = description; }
    public void setRealisations(List<Realisation> realisations) { this.realisations = realisations; }

}