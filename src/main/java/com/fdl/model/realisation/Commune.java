package com.fdl.model.realisation;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(
        name = "r_commune",
        uniqueConstraints = @UniqueConstraint(columnNames = {"name", "district_id"})
)
public class Commune {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 150)
    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "district_id", nullable = false)
    private District district;

    @OneToMany(mappedBy = "commune", cascade = CascadeType.ALL, orphanRemoval = false)
    private List<Realisation> realisations = new ArrayList<>();


    public Commune() {
    }

    public Commune(String name, District district) {
        this.name = name;
        this.district = district;
    }


    public Long getId() { return id; }
    public String getName() { return name; }
    public District getDistrict() { return district; }
    public List<Realisation> getRealisations() { return realisations; }

    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setDistrict(District district) { this.district = district; }
    public void setRealisations(List<Realisation> realisations) { this.realisations = realisations; }

}