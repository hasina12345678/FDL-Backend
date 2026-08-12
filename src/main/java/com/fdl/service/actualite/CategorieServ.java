package com.fdl.service.actualite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.actualite.Categorie;
import com.fdl.repository.actualite.CategorieRepo;

import java.util.List;
import java.util.Optional;

@Service
public class CategorieServ {

    @Autowired
    private CategorieRepo categorieRepo;


    public List<Categorie> findAll() {
        return categorieRepo.findAll();
    }


    public Categorie save(Categorie categorie) {
        return categorieRepo.save(categorie);
    }


    public Categorie findById(Long id) {
        return categorieRepo.findById(id).orElse(null);
    }


    public Categorie update(Long id, Categorie categorieDetails) {

        Optional<Categorie> categorieOpt = categorieRepo.findById(id);

        if (categorieOpt.isPresent()) {

            Categorie categorie = categorieOpt.get();

            categorie.setCategorie(categorieDetails.getCategorie());

            return categorieRepo.save(categorie);
        }

        return null;
    }


    public void delete(Long id) {
        categorieRepo.deleteById(id);
    }

}