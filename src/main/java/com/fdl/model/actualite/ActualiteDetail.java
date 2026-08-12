package com.fdl.model.actualite;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "a_actualite_detail")
public class ActualiteDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "subtitle", length = 255)
    private String subtitle;

    @Column(name = "paragraphe")
    private String paragraphe;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_actualite", nullable = false)
    private Actualite actualite;

    @OneToMany( mappedBy = "detail", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<ActualitePhoto> photos = new ArrayList<>();

    @OneToMany( mappedBy = "detail", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<ActualiteVideo> videos = new ArrayList<>();

    @OneToMany( mappedBy = "detail", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<ActualiteDocument> documents = new ArrayList<>();

    public ActualiteDetail() {}

    public ActualiteDetail(String subtitle, String paragraphe, Actualite actualite) {
        this.subtitle = subtitle;
        this.paragraphe = paragraphe;
        this.actualite = actualite;
    }

    public Long getId() { return id; }
    public String getSubtitle() { return subtitle; }
    public String getParagraphe() { return paragraphe; }
    public Actualite getActualite() { return actualite; }
    public List<ActualitePhoto> getPhotos() { return photos; }
    public List<ActualiteVideo> getVideos() { return videos; }
    public List<ActualiteDocument> getDocuments() { return documents; }

    public void setId(Long id) { this.id = id; }
    public void setSubtitle(String subtitle) { this.subtitle = subtitle; }
    public void setParagraphe(String paragraphe) { this.paragraphe = paragraphe; }
    public void setActualite(Actualite actualite) { this.actualite = actualite; }
    public void setPhotos(List<ActualitePhoto> photos) { this.photos = photos; }
    public void setVideos(List<ActualiteVideo> videos) { this.videos = videos; }
    public void setDocuments(List<ActualiteDocument> documents) { this.documents = documents; }

}