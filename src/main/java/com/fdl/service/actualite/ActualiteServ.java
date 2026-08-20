package com.fdl.service.actualite;

import com.fdl.dto.actualites.ActualiteDetailDTO;
import com.fdl.dto.actualites.ActualiteListDTO;
import com.fdl.dto.actualites.ActualiteRequestDTO;
import com.fdl.model.actualite.*;
import com.fdl.repository.actualite.ActualiteRepo;
import com.fdl.repository.actualite.AuteurRepo;
import com.fdl.repository.actualite.CategorieRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ActualiteServ {

    @Autowired
    private ActualiteRepo actualiteRepo;

    @Autowired
    private AuteurRepo auteurRepo;

    @Autowired
    private CategorieRepo categorieRepo;

    // =========================================================
    // LECTURE
    // =========================================================

    public List<ActualiteListDTO> findAll() {
        return actualiteRepo.findAll().stream()
                .map(this::toListDTO)
                .toList();
    }

    public Page<Actualite> findAllPaged(Pageable pageable) {
        return actualiteRepo.findAll(pageable);
    }

    public Actualite findById(Long id) {
        return actualiteRepo.findById(id).orElse(null);
    }

    // =========================================================
    // CRÉATION
    // =========================================================

    public Actualite create(ActualiteRequestDTO dto) {
        Actualite actualite = new Actualite();
        applyBaseFields(dto, actualite);
        rebuildDetails(dto, actualite);
        return actualiteRepo.save(actualite);
    }

    // =========================================================
    // MISE À JOUR
    // =========================================================

    public Actualite update(Long id, ActualiteRequestDTO dto) {
        Actualite actualite = actualiteRepo.findById(id).orElse(null);
        if (actualite == null) return null;

        applyBaseFields(dto, actualite);

        // orphanRemoval=true sur Actualite.details : vider puis
        // reconstruire supprime proprement l'ancien contenu (photos/
        // vidéos/documents compris, en cascade) et insère le nouveau.
        actualite.getDetails().clear();
        rebuildDetails(dto, actualite);

        return actualiteRepo.save(actualite);
    }

    // =========================================================
    // SUPPRESSION
    // =========================================================

    public void delete(Long id) {
        actualiteRepo.deleteById(id);
    }

    // =========================================================
    // HELPERS PRIVÉS
    // =========================================================

    private void applyBaseFields(ActualiteRequestDTO dto, Actualite actualite) {
        actualite.setTitle(dto.getTitle());
        actualite.setSummary(dto.getSummary());
        actualite.setLocation(dto.getLocation());
        actualite.setCover(dto.getCover());

        // AUTEUR NULLABLE : si aucun id fourni, on met explicitement null
        if (dto.getAuteurId() != null) {
            Auteur auteur = auteurRepo.findById(dto.getAuteurId()).orElse(null);
            actualite.setAuteur(auteur);
        } else {
            actualite.setAuteur(null);
        }

        List<Categorie> categories = (dto.getCategorieIds() == null)
                ? new ArrayList<>()
                : dto.getCategorieIds().stream()
                    .map(cid -> categorieRepo.findById(cid).orElse(null))
                    .filter(c -> c != null)
                    .collect(Collectors.toList());
        actualite.setCategories(categories);
    }

    private void rebuildDetails(ActualiteRequestDTO dto, Actualite actualite) {
        if (dto.getDetails() == null) return;

        for (ActualiteRequestDTO.DetailRequest d : dto.getDetails()) {
            ActualiteDetail detail = new ActualiteDetail();
            detail.setSubtitle(d.getSubtitle());
            detail.setParagraphe(d.getParagraphe());
            detail.setActualite(actualite);

            if (d.getPhotos() != null) {
                for (ActualiteRequestDTO.MediaRequest m : d.getPhotos()) {
                    ActualitePhoto photo = new ActualitePhoto(m.getUrl(), m.getDescription(), m.getOrdre(), detail);
                    detail.getPhotos().add(photo);
                }
            }
            if (d.getVideos() != null) {
                for (ActualiteRequestDTO.MediaRequest m : d.getVideos()) {
                    ActualiteVideo video = new ActualiteVideo(m.getUrl(), m.getDescription(), m.getOrdre(), detail);
                    detail.getVideos().add(video);
                }
            }
            if (d.getDocuments() != null) {
                for (ActualiteRequestDTO.MediaRequest m : d.getDocuments()) {
                    ActualiteDocument doc = new ActualiteDocument(m.getUrl(), m.getDescription(), m.getOrdre(), detail);
                    detail.getDocuments().add(doc);
                }
            }

            actualite.getDetails().add(detail);
        }
    }

    // =========================================================
    // MAPPING VERS DTO — utilisé par le contrôleur
    // =========================================================

    public ActualiteListDTO toListDTO(Actualite a) {
        return new ActualiteListDTO(
                a.getId(),
                a.getTitle(),
                a.getSummary(),
                a.getLocation(),
                a.getCover(),
                a.getAuteur() != null ? a.getAuteur().getId() : null,
                a.getAuteur() != null ? fullName(a.getAuteur()) : null,
                a.getCategories().stream().map(Categorie::getCategorie).toList(),
                a.getCreatedAt()
        );
    }

    public ActualiteDetailDTO toDetailDTO(Actualite a) {
        List<ActualiteDetailDTO.DetailBlockDTO> blocks = a.getDetails().stream()
                .map(this::toDetailBlockDTO)
                .toList();

        return new ActualiteDetailDTO(
                a.getId(),
                a.getTitle(),
                a.getSummary(),
                a.getLocation(),
                a.getCover(),
                a.getAuteur() != null ? a.getAuteur().getId() : null,
                a.getAuteur() != null ? fullName(a.getAuteur()) : null,
                a.getAuteur() != null ? a.getAuteur().getFonction() : null,
                a.getCategories().stream().map(Categorie::getCategorie).toList(),
                a.getCreatedAt(),
                blocks
        );
    }

    private ActualiteDetailDTO.DetailBlockDTO toDetailBlockDTO(ActualiteDetail d) {
        List<ActualiteDetailDTO.MediaDTO> photos = d.getPhotos().stream()
                .sorted(Comparator.comparing(ActualitePhoto::getOrdre))
                .map(p -> new ActualiteDetailDTO.MediaDTO(p.getId(), p.getPhoto(), p.getDescription(), p.getOrdre()))
                .toList();

        List<ActualiteDetailDTO.MediaDTO> videos = d.getVideos().stream()
                .sorted(Comparator.comparing(ActualiteVideo::getOrdre))
                .map(v -> new ActualiteDetailDTO.MediaDTO(v.getId(), v.getVideo(), v.getDescription(), v.getOrdre()))
                .toList();

        List<ActualiteDetailDTO.MediaDTO> documents = d.getDocuments().stream()
                .sorted(Comparator.comparing(ActualiteDocument::getOrdre))
                .map(doc -> new ActualiteDetailDTO.MediaDTO(doc.getId(), doc.getDocument(), doc.getDescription(), doc.getOrdre()))
                .toList();

        return new ActualiteDetailDTO.DetailBlockDTO(d.getId(), d.getSubtitle(), d.getParagraphe(), photos, videos, documents);
    }

    private String fullName(Auteur a) {
        if (a.getPrenom() != null && !a.getPrenom().isBlank()) {
            return a.getPrenom() + " " + a.getNom();
        }
        return a.getNom();
    }
}