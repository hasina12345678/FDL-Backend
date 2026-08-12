package com.fdl.model.realisation;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "r_region")
public class Region {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, unique = true, length = 100)
    private String name;

    @Column(name = "code", length = 20)
    private String code;

    @OneToMany(mappedBy = "region", cascade = CascadeType.ALL, orphanRemoval = false)
    private List<District> districts = new ArrayList<>();

    public Region() {
    }

    public Region(String name, String code) {
        this.name = name;
        this.code = code;
    }

    public Long getId() { return id; }
    public String getName() { return name; }
    public String getCode() { return code; }
    public List<District> getDistricts() { return districts; }

    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setCode(String code) { this.code = code; }
    public void setDistricts(List<District> districts) { this.districts = districts; }

}