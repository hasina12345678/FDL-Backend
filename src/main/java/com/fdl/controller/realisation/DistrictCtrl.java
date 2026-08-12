package com.fdl.controller.realisation;

import com.fdl.dto.realisations.CommuneDTO;
import com.fdl.dto.realisations.DistrictDTO;
import com.fdl.model.realisation.Commune;
import com.fdl.model.realisation.District;
import com.fdl.service.realisation.DistrictServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = {"http://localhost:5173", "http://localhost:8080"})
@RestController
@RequestMapping("/api/districts")
public class DistrictCtrl {

    @Autowired
    private DistrictServ districtServ;

    @GetMapping
    public List<DistrictDTO> findAll() {
        return districtServ.findAll()
                .stream()
                .map(district -> new DistrictDTO(
                        district.getId(),
                        district.getName(),
                        district.getCode(),
                        district.getRegion().getId(),
                        district.getRegion().getName()
                ))
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<DistrictDTO> findById(@PathVariable Long id) {

        District district = districtServ.findById(id);

        if(district == null){
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(
                new DistrictDTO(
                        district.getId(),
                        district.getName(),
                        district.getCode(),
                        district.getRegion().getId(),
                        district.getRegion().getName()
                )
        );
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public DistrictDTO create(@RequestBody District district){

        District saved = districtServ.save(district);

        return new DistrictDTO(
                saved.getId(),
                saved.getName(),
                saved.getCode(),
                saved.getRegion().getId(),
                district.getRegion().getName()
        );
    }


    @PutMapping("/{id}")
    public ResponseEntity<DistrictDTO> update(
            @PathVariable Long id,
            @RequestBody District districtDetails){

        District district = districtServ.update(id, districtDetails);

        if(district == null){
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(
                new DistrictDTO(
                        district.getId(),
                        district.getName(),
                        district.getCode(),
                        district.getRegion().getId(),
                        district.getRegion().getName()
                )
        );
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){

        District district = districtServ.findById(id);

        if(district == null){
            return ResponseEntity.notFound().build();
        }

        districtServ.delete(id);

        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}/communes")
    public ResponseEntity<List<CommuneDTO>> findCommunesByDistrict(@PathVariable Long id){

        District district = districtServ.findById(id);

        if(district == null){
            return ResponseEntity.notFound().build();
        }

        List<CommuneDTO> communes = district.getCommunes()
                .stream()
                .map(commune -> new CommuneDTO(
                        commune.getId(),
                        commune.getName(),
                        district.getId(),
                        district.getName()
                ))
                .toList();

        return ResponseEntity.ok(communes);
    }

}