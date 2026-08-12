package com.fdl.service.actualite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.actualite.Actualite;
import com.fdl.repository.actualite.ActualiteRepo;

import java.util.List;
import java.util.Optional;

@Service
public class ActualiteServ {

    @Autowired
    private ActualiteRepo actualiteRepo;


    public List<Actualite> findAll() {
        return actualiteRepo.findAll();
    }


    public Actualite save(Actualite actualite) {
        return actualiteRepo.save(actualite);
    }


    public Actualite findById(Long id) {
        return actualiteRepo.findById(id).orElse(null);
    }


    public Actualite update(Long id, Actualite actualiteDetails) {

        Optional<Actualite> actualiteOpt = actualiteRepo.findById(id);

        if (actualiteOpt.isPresent()) {

            Actualite actualite = actualiteOpt.get();

            actualite.setTitle(actualiteDetails.getTitle());
            actualite.setSummary(actualiteDetails.getSummary());
            actualite.setLocation(actualiteDetails.getLocation());
            actualite.setCover(actualiteDetails.getCover());
            actualite.setAuteur(actualiteDetails.getAuteur());
            actualite.setPublishedAt(actualiteDetails.getPublishedAt());
            actualite.setCategories(actualiteDetails.getCategories());
            actualite.setDetails(actualiteDetails.getDetails());

            return actualiteRepo.save(actualite);
        }

        return null;
    }


    public void delete(Long id) {
        actualiteRepo.deleteById(id);
    }

}