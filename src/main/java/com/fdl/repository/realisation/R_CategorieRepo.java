package com.fdl.repository.realisation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.realisation.R_Categorie;

@Repository
public interface R_CategorieRepo extends JpaRepository<R_Categorie, Long> {

}