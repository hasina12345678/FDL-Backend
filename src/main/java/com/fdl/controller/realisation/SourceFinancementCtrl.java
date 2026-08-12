package com.fdl.controller.realisation;

import com.fdl.dto.realisations.SourceFinancementDTO;
import com.fdl.model.realisation.SourceFinancement;
import com.fdl.model.realisation.Realisation;
import com.fdl.service.realisation.SourceFinancementServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = {"http://localhost:5173", "http://localhost:8080"})
@RestController
@RequestMapping("/api/sources-financement")
public class SourceFinancementCtrl {

    @Autowired
    private SourceFinancementServ sourceFinancementServ;

    private SourceFinancementDTO convertToDTO(SourceFinancement source){
        return new SourceFinancementDTO(
                source.getId(),
                source.getName(),
                source.getDescription()
        );
    }

    @GetMapping
    public List<SourceFinancementDTO> findAll() {
        return sourceFinancementServ.findAll()
                .stream()
                .map(this::convertToDTO)
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<SourceFinancementDTO> findById(@PathVariable Long id) {
        SourceFinancement source = sourceFinancementServ.findById(id);
        if(source == null){ return ResponseEntity.notFound().build(); }
        return ResponseEntity.ok(convertToDTO(source));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public SourceFinancementDTO create(@RequestBody SourceFinancement source){
        SourceFinancement saved = sourceFinancementServ.save(source);
        return convertToDTO(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<SourceFinancementDTO> update(@PathVariable Long id, @RequestBody SourceFinancement sourceDetails){
        SourceFinancement source = sourceFinancementServ.update(id, sourceDetails);
        if(source == null){ return ResponseEntity.notFound().build(); }
        return ResponseEntity.ok(convertToDTO(source));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){
        SourceFinancement source = sourceFinancementServ.findById(id);
        if(source == null){ return ResponseEntity.notFound().build(); }
        sourceFinancementServ.delete(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}/realisations")
    public ResponseEntity<List<Realisation>> findRealisationsBySource(@PathVariable Long id){
        SourceFinancement source = sourceFinancementServ.findById(id);
        if(source == null){ return ResponseEntity.notFound().build(); }
        return ResponseEntity.ok(source.getRealisations());
    }

}