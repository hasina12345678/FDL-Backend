package com.fdl.model.realisation;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(
        name = "r_district",
        uniqueConstraints = @UniqueConstraint(columnNames = {"name", "region_id"})
)
public class District {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "code", length = 20)
    private String code;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "region_id", nullable = false)
    private Region region;

    @OneToMany(mappedBy = "district", cascade = CascadeType.ALL, orphanRemoval = false)
    private List<Commune> communes = new ArrayList<>();


    public District() {
    }

    public District(String name, String code, Region region) {
        this.name = name;
        this.code = code;
        this.region = region;
    }


    public Long getId() { return id; }
    public String getName() { return name; }
    public String getCode() { return code; }
    public Region getRegion() { return region; }
    public List<Commune> getCommunes() { return communes; }

    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setCode(String code) { this.code = code; }
    public void setRegion(Region region) { this.region = region; }
    public void setCommunes(List<Commune> communes) { this.communes = communes; }

}