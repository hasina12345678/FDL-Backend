package com.fdl.controller.realisation;

import com.fdl.dto.realisations.RegionDTO;
import com.fdl.dto.realisations.DistrictDTO;

import com.fdl.model.realisation.Region;
import com.fdl.service.realisation.RegionServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Comparator;

import java.util.List;

@RestController
@RequestMapping("/api/regions")
public class RegionCtrl {

    @Autowired
    private RegionServ regionServ;

    @GetMapping
    public List<RegionDTO> findAll() {
        return regionServ.findAll()
                .stream()
                .sorted(Comparator.comparing(Region::getId))
                .map(region -> new RegionDTO(
                        region.getId(),
                        region.getName(),
                        region.getCode()
                ))
                .toList();
    }

    @GetMapping("/{id}")
    public ResponseEntity<RegionDTO> findById(@PathVariable Long id) {

        Region region = regionServ.findById(id);

        if(region == null){ 
            return ResponseEntity.notFound().build(); 
        }

        return ResponseEntity.ok(
                new RegionDTO(
                        region.getId(),
                        region.getName(),
                        region.getCode()
                )
        );
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public RegionDTO create(@RequestBody Region region){

        Region saved = regionServ.save(region);

        return new RegionDTO(
                saved.getId(),
                saved.getName(),
                saved.getCode()
        );
    }

    @PutMapping("/{id}")
    public ResponseEntity<RegionDTO> update(
            @PathVariable Long id,
            @RequestBody Region regionDetails){

        Region region = regionServ.update(id, regionDetails);

        if(region == null){ 
            return ResponseEntity.notFound().build(); 
        }

        return ResponseEntity.ok(
                new RegionDTO(
                        region.getId(),
                        region.getName(),
                        region.getCode()
                )
        );
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id){

        Region region = regionServ.findById(id);

        if(region == null){ 
            return ResponseEntity.notFound().build(); 
        }

        regionServ.delete(id);

        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}/districts")
    public ResponseEntity<List<DistrictDTO>> findDistrictsByRegion(@PathVariable Long id){

        Region region = regionServ.findById(id);

        if(region == null){
            return ResponseEntity.notFound().build();
        }

        List<DistrictDTO> districts = region.getDistricts()
                .stream()
                .map(district -> new DistrictDTO(
                        district.getId(),
                        district.getName(),
                        district.getCode(),
                        region.getId(),
                        region.getName()
                ))
                .toList();

        return ResponseEntity.ok(districts);
    }

}