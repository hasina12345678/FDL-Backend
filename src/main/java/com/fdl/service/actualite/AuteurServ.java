package com.fdl.service.actualite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.actualite.Auteur;
import com.fdl.repository.actualite.AuteurRepo;

import java.util.List;
import java.util.Optional;

@Service
public class AuteurServ {

    @Autowired
    private AuteurRepo auteurRepo;


    public List<Auteur> findAll() {
        return auteurRepo.findAll();
    }


    public Auteur save(Auteur auteur) {
        return auteurRepo.save(auteur);
    }


    public Auteur findById(Long id) {
        return auteurRepo.findById(id).orElse(null);
    }


    public Auteur update(Long id, Auteur auteurDetails) {

        Optional<Auteur> auteurOpt = auteurRepo.findById(id);

        if (auteurOpt.isPresent()) {

            Auteur auteur = auteurOpt.get();

            auteur.setNom(auteurDetails.getNom());
            auteur.setPrenom(auteurDetails.getPrenom());
            auteur.setFonction(auteurDetails.getFonction());
            auteur.setEmail(auteurDetails.getEmail());

            return auteurRepo.save(auteur);
        }

        return null;
    }


    public void delete(Long id) {
        auteurRepo.deleteById(id);
    }

}