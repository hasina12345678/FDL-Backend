package com.fdl.service.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.realisation.Region;
import com.fdl.repository.realisation.RegionRepo;

import java.util.List;
import java.util.Optional;

@Service
public class RegionServ {

    @Autowired
    private RegionRepo regionRepo;


    public List<Region> findAll() {
        return regionRepo.findAll();
    }


    public Region save(Region region) {
        return regionRepo.save(region);
    }


    public Region findById(Long id) {
        return regionRepo.findById(id).orElse(null);
    }


    public Region update(Long id, Region regionDetails) {

        Optional<Region> regionOpt = regionRepo.findById(id);

        if (regionOpt.isPresent()) {

            Region region = regionOpt.get();

            region.setName(regionDetails.getName());
            region.setCode(regionDetails.getCode());

            return regionRepo.save(region);
        }

        return null;
    }


    public void delete(Long id) {
        regionRepo.deleteById(id);
    }

}