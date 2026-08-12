package com.fdl.controller.realisation;

import com.fdl.dto.realisations.ProgrammeDTO;
import com.fdl.model.realisation.Programme;
import com.fdl.model.realisation.Realisation;
import com.fdl.service.realisation.ProgrammeServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/programmes")
public class ProgrammeCtrl {

    @Autowired
    private ProgrammeServ programmeServ;

    private ProgrammeDTO convertToDTO(Programme programme){
        return new ProgrammeDTO(
                programme.getId(),
                programme.getCode(),
                programme.getName(),
                programme.getDescription()
        );
    }

    @GetMapping
    public List<ProgrammeDTO> findAll() {
        return programmeServ.findAll()
                .stream()
                .map(this::convertToDTO)
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProgrammeDTO> findById(@PathVariable Long id) {

        Programme programme = programmeServ.findById(id);

        if(programme == null){
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(convertToDTO(programme));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public ProgrammeDTO create(@RequestBody Programme programme){

        Programme saved = programmeServ.save(programme);

        return convertToDTO(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ProgrammeDTO> update(
            @PathVariable Long id,
            @RequestBody Programme programmeDetails){

        Programme programme = programmeServ.update(id, programmeDetails);

        if(programme == null){
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(convertToDTO(programme));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){

        Programme programme = programmeServ.findById(id);

        if(programme == null){
            return ResponseEntity.notFound().build();
        }

        programmeServ.delete(id);

        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}/realisations")
    public ResponseEntity<List<Realisation>> findRealisationsByProgramme(@PathVariable Long id){

        Programme programme = programmeServ.findById(id);

        if(programme == null){
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(programme.getRealisations());
    }

}