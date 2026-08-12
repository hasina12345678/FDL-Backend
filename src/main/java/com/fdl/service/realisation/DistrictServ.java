package com.fdl.service.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.realisation.District;
import com.fdl.repository.realisation.DistrictRepo;

import java.util.List;
import java.util.Optional;

@Service
public class DistrictServ {

    @Autowired
    private DistrictRepo districtRepo;


    public List<District> findAll() {
        return districtRepo.findAll();
    }


    public District save(District district) {
        return districtRepo.save(district);
    }


    public District findById(Long id) {
        return districtRepo.findById(id).orElse(null);
    }


    public District update(Long id, District districtDetails) {

        Optional<District> districtOpt = districtRepo.findById(id);

        if (districtOpt.isPresent()) {

            District district = districtOpt.get();

            district.setName(districtDetails.getName());
            district.setCode(districtDetails.getCode());
            district.setRegion(districtDetails.getRegion());

            return districtRepo.save(district);
        }

        return null;
    }


    public void delete(Long id) {
        districtRepo.deleteById(id);
    }

}