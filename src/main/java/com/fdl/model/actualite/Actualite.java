package com.fdl.model.actualite;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "a_actualite")
public class Actualite {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false, length = 255)
    private String title;

    @Column(name = "summary")
    private String summary;

    @Column(name = "location", length = 255)
    private String location;

    @Column(name = "cover", length = 255)
    private String cover;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_auteur", nullable = false)
    private Auteur auteur;

    @Column(name = "published_at")
    private LocalDateTime publishedAt;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;


    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable( name = "a_actualite_categorie", joinColumns = @JoinColumn(name = "id_actualite"), inverseJoinColumns = @JoinColumn(name = "id_categorie"))
    private List<Categorie> categories = new ArrayList<>();


    @OneToMany( mappedBy = "actualite", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<ActualiteDetail> details = new ArrayList<>();

    public Actualite() {}

    public Actualite(String title, String summary, String location, String cover, Auteur auteur, LocalDateTime publishedAt) {
        this.title = title;
        this.summary = summary;
        this.location = location;
        this.cover = cover;
        this.auteur = auteur;
        this.publishedAt = publishedAt;
    }

    public Long getId() { return id; }
    public String getTitle() { return title; }
    public String getSummary() { return summary; }
    public String getLocation() { return location; }
    public String getCover() { return cover; }
    public Auteur getAuteur() { return auteur; }
    public LocalDateTime getPublishedAt() { return publishedAt; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public LocalDateTime getUpdatedAt() { return updatedAt; }
    public List<Categorie> getCategories() { return categories; }
    public List<ActualiteDetail> getDetails() { return details; }

    public void setId(Long id) { this.id = id; }
    public void setTitle(String title) { this.title = title; }
    public void setSummary(String summary) { this.summary = summary; }
    public void setLocation(String location) { this.location = location; }
    public void setCover(String cover) { this.cover = cover; }
    public void setAuteur(Auteur auteur) { this.auteur = auteur; }
    public void setPublishedAt(LocalDateTime publishedAt) { this.publishedAt = publishedAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
    public void setUpdatedAt(LocalDateTime updatedAt) { this.updatedAt = updatedAt; }
    public void setCategories(List<Categorie> categories) { this.categories = categories; }
    public void setDetails(List<ActualiteDetail> details) { this.details = details; }

}