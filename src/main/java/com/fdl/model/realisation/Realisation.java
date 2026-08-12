package com.fdl.model.realisation;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.LocalDate;

@Entity
@Table(name = "r_realisation")
public class Realisation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false, length = 255)
    private String title;

    @Column(name = "summary")
    private String summary;

    @Column(name = "description")
    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "commune_id", nullable = false)
    private Commune commune;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categorie_id")
    private R_Categorie categorie;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "programme_id")
    private Programme programme;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "source_financement_id")
    private SourceFinancement sourceFinancement;

    @Column(name = "annee")
    private Integer annee;

    @Column(name = "date_realisation")
    private LocalDate dateRealisation;

    @Column(name = "montant", precision = 18, scale = 2)
    private BigDecimal montant;

    @Column(name = "latitude", precision = 10, scale = 7)
    private BigDecimal latitude;

    @Column(name = "longitude", precision = 10, scale = 7)
    private BigDecimal longitude;

    @Column(name = "photo", length = 255)
    private String photo;

    @Column(name = "created_at")
    private LocalDateTime createdAt;


    public Realisation() {
    }

    public Realisation(String title, String summary, String description, Commune commune, R_Categorie categorie, Programme programme, SourceFinancement sourceFinancement, Integer annee, LocalDate dateRealisation, BigDecimal montant, BigDecimal latitude, BigDecimal longitude, String photo, LocalDateTime createdAt) {
        this.title = title;
        this.summary = summary;
        this.description = description;
        this.commune = commune;
        this.categorie = categorie;
        this.programme = programme;
        this.sourceFinancement = sourceFinancement;
        this.annee = annee;
        this.dateRealisation = dateRealisation;
        this.montant = montant;
        this.latitude = latitude;
        this.longitude = longitude;
        this.photo = photo;
        this.createdAt = createdAt;
    }


    public Long getId() { return id; }
    public String getTitle() { return title; }
    public String getSummary() { return summary; }
    public String getDescription() { return description; }
    public Commune getCommune() { return commune; }
    public R_Categorie getCategorie() { return categorie; }
    public Programme getProgramme() { return programme; }
    public SourceFinancement getSourceFinancement() { return sourceFinancement; }
    public Integer getAnnee() { return annee; }
    public LocalDate getDateRealisation() { return dateRealisation; }
    public BigDecimal getMontant() { return montant; }
    public BigDecimal getLatitude() { return latitude; }
    public BigDecimal getLongitude() { return longitude; }
    public String getPhoto() { return photo; }
    public LocalDateTime getCreatedAt() { return createdAt; }

    public void setId(Long id) { this.id = id; }
    public void setTitle(String title) { this.title = title; }
    public void setSummary(String summary) { this.summary = summary; }
    public void setDescription(String description) { this.description = description; }
    public void setCommune(Commune commune) { this.commune = commune; }
    public void setCategorie(R_Categorie categorie) { this.categorie = categorie; }
    public void setProgramme(Programme programme) { this.programme = programme; }
    public void setSourceFinancement(SourceFinancement sourceFinancement) { this.sourceFinancement = sourceFinancement; }
    public void setAnnee(Integer annee) { this.annee = annee; }
    public void setDateRealisation(LocalDate dateRealisation) { this.dateRealisation = dateRealisation; }
    public void setMontant(BigDecimal montant) { this.montant = montant; }
    public void setLatitude(BigDecimal latitude) { this.latitude = latitude; }
    public void setLongitude(BigDecimal longitude) { this.longitude = longitude; }
    public void setPhoto(String photo) { this.photo = photo; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }

    @PrePersist
    public void prePersist() {
        this.createdAt = LocalDateTime.now();
    }

}