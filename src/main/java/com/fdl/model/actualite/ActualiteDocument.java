package com.fdl.model.actualite;

import jakarta.persistence.*;

@Entity
@Table(name = "a_actualite_document")
public class ActualiteDocument {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "document", nullable = false, length = 255)
    private String document;

    @Column(name = "description")
    private String description;

    @Column(name = "ordre", nullable = false)
    private Integer ordre;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_detail", nullable = false)
    private ActualiteDetail detail;

    public ActualiteDocument() {}

    public ActualiteDocument(String document, String description, Integer ordre, ActualiteDetail detail) {
        this.document = document;
        this.description = description;
        this.ordre = ordre;
        this.detail = detail;
    }

    public Long getId() { return id; }
    public String getDocument() { return document; }
    public String getDescription() { return description; }
    public Integer getOrdre() { return ordre; }
    public ActualiteDetail getDetail() { return detail; }

    public void setId(Long id) { this.id = id; }
    public void setDocument(String document) { this.document = document; }
    public void setDescription(String description) { this.description = description; }
    public void setOrdre(Integer ordre) { this.ordre = ordre; }
    public void setDetail(ActualiteDetail detail) { this.detail = detail; }

}