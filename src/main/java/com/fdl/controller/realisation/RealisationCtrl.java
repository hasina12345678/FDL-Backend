package com.fdl.controller.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.fdl.dto.realisations.RealisationDTO;
import com.fdl.model.realisation.*;
import com.fdl.service.realisation.*;

import java.util.List;

@RestController
@RequestMapping("/api/realisations")
public class RealisationCtrl {

    @Autowired
    private RealisationServ realisationServ;

    @Autowired
    private CommuneServ communeServ;

    @Autowired
    private R_CategorieServ categorieServ;

    @Autowired
    private ProgrammeServ programmeServ;

    @Autowired
    private SourceFinancementServ sourceFinancementServ;


    private RealisationDTO convertToDTO(Realisation r) {
        return new RealisationDTO(
                r.getId(),
                r.getTitle(),
                r.getSummary(),
                r.getDescription(),
                r.getCommune() != null ? r.getCommune().getId() : null,
                r.getCommune() != null ? r.getCommune().getName() : null,
                r.getCategorie() != null ? r.getCategorie().getId() : null,
                r.getCategorie() != null ? r.getCategorie().getName() : null,
                r.getProgramme() != null ? r.getProgramme().getId() : null,
                r.getProgramme() != null ? r.getProgramme().getName() : null,
                r.getSourceFinancement() != null ? r.getSourceFinancement().getId() : null,
                r.getSourceFinancement() != null ? r.getSourceFinancement().getName() : null,
                r.getAnnee(),
                r.getDateRealisation(),
                r.getMontant(),
                r.getLatitude(),
                r.getLongitude(),
                r.getPhoto(),
                r.getCreatedAt()
        );
    }

    /**
     * Construit/actualise l'entité Realisation à partir du DTO,
     * en résolvant chaque relation via son service à partir de l'id.
     */
    private void applyDtoToEntity(RealisationDTO dto, Realisation entity) {

        entity.setTitle(dto.getTitle());
        entity.setSummary(dto.getSummary());
        entity.setDescription(dto.getDescription());
        entity.setAnnee(dto.getAnnee());
        entity.setDateRealisation(dto.getDateRealisation());
        entity.setMontant(dto.getMontant());
        entity.setLatitude(dto.getLatitude());
        entity.setLongitude(dto.getLongitude());
        entity.setPhoto(dto.getPhoto());

        if (dto.getCommuneId() != null) {
            Commune commune = communeServ.findById(dto.getCommuneId());
            entity.setCommune(commune);
        }

        if (dto.getCategorieId() != null) {
            R_Categorie categorie = categorieServ.findById(dto.getCategorieId());
            entity.setCategorie(categorie);
        } else {
            entity.setCategorie(null);
        }

        if (dto.getProgrammeId() != null) {
            Programme programme = programmeServ.findById(dto.getProgrammeId());
            entity.setProgramme(programme);
        } else {
            entity.setProgramme(null);
        }

        if (dto.getSourceFinancementId() != null) {
            SourceFinancement source = sourceFinancementServ.findById(dto.getSourceFinancementId());
            entity.setSourceFinancement(source);
        } else {
            entity.setSourceFinancement(null);
        }
    }


    @GetMapping
    public List<RealisationDTO> findAll() {
        return realisationServ.findAll()
                .stream()
                .map(this::convertToDTO)
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<RealisationDTO> findById(@PathVariable Long id) {

        Realisation realisation = realisationServ.findById(id);

        if (realisation == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(convertToDTO(realisation));
    }

    @PostMapping
    public ResponseEntity<RealisationDTO> create(@RequestBody RealisationDTO dto) {

        if (dto.getCommuneId() == null) {
            return ResponseEntity.badRequest().build();
        }

        Commune commune = communeServ.findById(dto.getCommuneId());

        if (commune == null) {
            return ResponseEntity.badRequest().build();
        }

        Realisation entity = new Realisation();
        applyDtoToEntity(dto, entity);

        Realisation saved = realisationServ.save(entity);

        return ResponseEntity.status(HttpStatus.CREATED).body(convertToDTO(saved));
    }

    @PutMapping("/{id}")
    public ResponseEntity<RealisationDTO> update(
            @PathVariable Long id,
            @RequestBody RealisationDTO dto) {

        Realisation realisation = realisationServ.findById(id);

        if (realisation == null) {
            return ResponseEntity.notFound().build();
        }

        applyDtoToEntity(dto, realisation);

        Realisation updated = realisationServ.save(realisation);

        return ResponseEntity.ok(convertToDTO(updated));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {

        Realisation realisation = realisationServ.findById(id);

        if (realisation == null) {
            return ResponseEntity.notFound().build();
        }

        realisationServ.delete(id);

        return ResponseEntity.noContent().build();
    }

}