package com.fdl.service.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.realisation.R_Categorie;
import com.fdl.repository.realisation.R_CategorieRepo;

import java.util.List;
import java.util.Optional;

@Service
public class R_CategorieServ {

    @Autowired
    private R_CategorieRepo categorieRepo;


    public List<R_Categorie> findAll() {
        return categorieRepo.findAll();
    }


    public R_Categorie save(R_Categorie categorie) {
        return categorieRepo.save(categorie);
    }


    public R_Categorie findById(Long id) {
        return categorieRepo.findById(id).orElse(null);
    }


    public R_Categorie update(Long id, R_Categorie categorieDetails) {

        Optional<R_Categorie> categorieOpt = categorieRepo.findById(id);

        if (categorieOpt.isPresent()) {

            R_Categorie categorie = categorieOpt.get();

            categorie.setName(categorieDetails.getName());

            return categorieRepo.save(categorie);
        }

        return null;
    }


    public void delete(Long id) {
        categorieRepo.deleteById(id);
    }

}