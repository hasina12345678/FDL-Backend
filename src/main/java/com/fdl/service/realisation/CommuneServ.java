package com.fdl.service.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.realisation.Commune;
import com.fdl.repository.realisation.CommuneRepo;

import java.util.List;
import java.util.Optional;

@Service
public class CommuneServ {

    @Autowired
    private CommuneRepo communeRepo;


    public List<Commune> findAll() {
        return communeRepo.findAll();
    }


    public Commune save(Commune commune) {
        return communeRepo.save(commune);
    }


    public Commune findById(Long id) {
        return communeRepo.findById(id).orElse(null);
    }


    public Commune update(Long id, Commune communeDetails) {

        Optional<Commune> communeOpt = communeRepo.findById(id);

        if (communeOpt.isPresent()) {

            Commune commune = communeOpt.get();

            commune.setName(communeDetails.getName());
            commune.setDistrict(communeDetails.getDistrict());

            return communeRepo.save(commune);
        }

        return null;
    }


    public void delete(Long id) {
        communeRepo.deleteById(id);
    }

}