package com.fdl.controller.actualite;

import com.fdl.dto.actualites.AuteurDTO;
import com.fdl.model.actualite.Auteur;
import com.fdl.service.actualite.AuteurServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/auteurs")
public class AuteurCtrl {

    @Autowired
    private AuteurServ auteurServ;

    private AuteurDTO convertToDTO(Auteur auteur) {
        return new AuteurDTO(
            auteur.getId(),
            auteur.getNom(),
            auteur.getFonction()
        );
    }

    @GetMapping
    public List<AuteurDTO> findAll() {
        return auteurServ.findAll()
                .stream()
                .map(this::convertToDTO)
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<AuteurDTO> findById(@PathVariable Long id) {
        Auteur auteur = auteurServ.findById(id);
        if (auteur == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(convertToDTO(auteur));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public AuteurDTO create(@RequestBody Auteur auteur) {
        Auteur saved = auteurServ.save(auteur);
        return convertToDTO(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<AuteurDTO> update(@PathVariable Long id, @RequestBody Auteur auteurDetails) {
        Auteur auteur = auteurServ.update(id, auteurDetails);
        if (auteur == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(convertToDTO(auteur));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        Auteur auteur = auteurServ.findById(id);
        if (auteur == null) {
            return ResponseEntity.notFound().build();
        }
        auteurServ.delete(id);
        return ResponseEntity.noContent().build();
    }
}