package com.fdl.controller.realisation;

import com.fdl.dto.realisations.R_CategorieDTO;
import com.fdl.model.realisation.R_Categorie;
import com.fdl.model.realisation.Realisation;
import com.fdl.service.realisation.R_CategorieServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/categories-realisations")
public class R_CategorieCtrl {

    @Autowired
    private R_CategorieServ categorieServ;

    private R_CategorieDTO convertToDTO(R_Categorie categorie){
        return new R_CategorieDTO(
                categorie.getId(),
                categorie.getName()
        );
    }

    @GetMapping
    public List<R_CategorieDTO> findAll() {
        return categorieServ.findAll()
                .stream()
                .map(this::convertToDTO)
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<R_CategorieDTO> findById(@PathVariable Long id) {
        R_Categorie categorie = categorieServ.findById(id);
        if(categorie == null){ return ResponseEntity.notFound().build(); }
        return ResponseEntity.ok(convertToDTO(categorie));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public R_CategorieDTO create(@RequestBody R_Categorie categorie){
        R_Categorie saved = categorieServ.save(categorie);
        return convertToDTO(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<R_CategorieDTO> update(@PathVariable Long id, @RequestBody R_Categorie categorieDetails){
        R_Categorie categorie = categorieServ.update(id, categorieDetails);
        if(categorie == null){ return ResponseEntity.notFound().build(); }
        return ResponseEntity.ok(convertToDTO(categorie));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){
        R_Categorie categorie = categorieServ.findById(id);
        if(categorie == null){ return ResponseEntity.notFound().build(); }
        categorieServ.delete(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}/realisations")
    public ResponseEntity<List<Realisation>> findRealisationsByCategorie(@PathVariable Long id){
        R_Categorie categorie = categorieServ.findById(id);
        if(categorie == null){ return ResponseEntity.notFound().build(); }
        return ResponseEntity.ok(categorie.getRealisations());
    }

}