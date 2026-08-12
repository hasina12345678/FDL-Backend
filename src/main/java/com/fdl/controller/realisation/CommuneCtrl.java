package com.fdl.controller.realisation;

import com.fdl.dto.realisations.CommuneDTO;
import com.fdl.model.realisation.Commune;
import com.fdl.model.realisation.District;
import com.fdl.service.realisation.CommuneServ;
import com.fdl.service.realisation.DistrictServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/communes")
public class CommuneCtrl {

    @Autowired
    private CommuneServ communeServ;

    @Autowired
    private DistrictServ districtServ;


    private CommuneDTO convertToDTO(Commune commune){

        return new CommuneDTO(
            commune.getId(),
            commune.getName(),
            commune.getDistrict() != null ? commune.getDistrict().getId() : null,
            commune.getDistrict() != null ? commune.getDistrict().getName() : null
        );
    }


    @GetMapping
    public List<CommuneDTO> findAll(){

        return communeServ.findAll()
                .stream()
                .map(this::convertToDTO)
                .toList();
    }


    @GetMapping("/{id}")
    public ResponseEntity<CommuneDTO> findById(@PathVariable Long id){

        Commune commune = communeServ.findById(id);

        if(commune == null){
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(convertToDTO(commune));
    }


    @PostMapping
    public ResponseEntity<CommuneDTO> create(@RequestBody CommuneDTO dto){

        District district = districtServ.findById(dto.getDistrictId());

        if(district == null){
            return ResponseEntity.badRequest().build();
        }

        Commune commune = new Commune(
            dto.getName(),
            district
        );

        Commune saved = communeServ.save(commune);

        return ResponseEntity.status(HttpStatus.CREATED)
                .body(convertToDTO(saved));
    }


    @PutMapping("/{id}")
    public ResponseEntity<CommuneDTO> update(
            @PathVariable Long id,
            @RequestBody CommuneDTO dto){

        Commune commune = communeServ.findById(id);

        if(commune == null){
            return ResponseEntity.notFound().build();
        }

        commune.setName(dto.getName());

        if(dto.getDistrictId() != null){

            District district = districtServ.findById(dto.getDistrictId());

            if(district != null){
                commune.setDistrict(district);
            }
        }

        Commune updated = communeServ.save(commune);

        return ResponseEntity.ok(convertToDTO(updated));
    }


    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){

        Commune commune = communeServ.findById(id);

        if(commune == null){
            return ResponseEntity.notFound().build();
        }

        communeServ.delete(id);

        return ResponseEntity.noContent().build();
    }


    @GetMapping("/district/{districtId}")
    public ResponseEntity<List<CommuneDTO>> findByDistrict(
            @PathVariable Long districtId){

        District district = districtServ.findById(districtId);

        if(district == null){
            return ResponseEntity.notFound().build();
        }

        List<CommuneDTO> communes = district.getCommunes()
                .stream()
                .map(this::convertToDTO)
                .toList();

        return ResponseEntity.ok(communes);
    }

}