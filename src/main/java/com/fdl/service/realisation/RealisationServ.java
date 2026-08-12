package com.fdl.service.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.realisation.Realisation;
import com.fdl.repository.realisation.RealisationRepo;

import java.util.List;
import java.util.Optional;

@Service
public class RealisationServ {

    @Autowired
    private RealisationRepo realisationRepo;


    public List<Realisation> findAll() {
        return realisationRepo.findAll();
    }


    public Realisation save(Realisation realisation) {
        return realisationRepo.save(realisation);
    }


    public Realisation findById(Long id) {
        return realisationRepo.findById(id).orElse(null);
    }


    public Realisation update(Long id, Realisation realisationDetails) {

        Optional<Realisation> realisationOpt = realisationRepo.findById(id);

        if (realisationOpt.isPresent()) {

            Realisation realisation = realisationOpt.get();

            realisation.setTitle(realisationDetails.getTitle());
            realisation.setSummary(realisationDetails.getSummary());
            realisation.setDescription(realisationDetails.getDescription());

            realisation.setCommune(realisationDetails.getCommune());
            realisation.setCategorie(realisationDetails.getCategorie());
            realisation.setProgramme(realisationDetails.getProgramme());
            realisation.setSourceFinancement(realisationDetails.getSourceFinancement());

            realisation.setAnnee(realisationDetails.getAnnee());
            realisation.setDateRealisation(realisationDetails.getDateRealisation());

            realisation.setMontant(realisationDetails.getMontant());

            realisation.setLatitude(realisationDetails.getLatitude());
            realisation.setLongitude(realisationDetails.getLongitude());

            realisation.setPhoto(realisationDetails.getPhoto());

            // realisation.setUpdatedAt(realisationDetails.getUpdatedAt());

            return realisationRepo.save(realisation);
        }

        return null;
    }


    public void delete(Long id) {
        realisationRepo.deleteById(id);
    }

}