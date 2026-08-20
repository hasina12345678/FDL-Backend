package com.fdl.controller.actualite;

import com.fdl.dto.actualites.CategorieDTO;
import com.fdl.model.actualite.Categorie;
import com.fdl.service.actualite.CategorieServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/categories-actualites")
public class A_CategorieCtrl {

    @Autowired
    private CategorieServ categorieServ;

    private CategorieDTO convertToDTO(Categorie categorie) {
        return new CategorieDTO(
            categorie.getId(),
            categorie.getCategorie()
        );
    }

    @GetMapping
    public List<CategorieDTO> findAll() {
        return categorieServ.findAll()
                .stream()
                .map(this::convertToDTO)
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<CategorieDTO> findById(@PathVariable Long id) {
        Categorie categorie = categorieServ.findById(id);
        if (categorie == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(convertToDTO(categorie));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public CategorieDTO create(@RequestBody Categorie categorie) {
        Categorie saved = categorieServ.save(categorie);
        return convertToDTO(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<CategorieDTO> update(@PathVariable Long id, @RequestBody Categorie categorieDetails) {
        Categorie categorie = categorieServ.update(id, categorieDetails);
        if (categorie == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(convertToDTO(categorie));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        Categorie categorie = categorieServ.findById(id);
        if (categorie == null) {
            return ResponseEntity.notFound().build();
        }
        categorieServ.delete(id);
        return ResponseEntity.noContent().build();
    }
}