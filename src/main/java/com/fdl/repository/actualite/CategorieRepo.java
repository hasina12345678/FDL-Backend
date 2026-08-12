package com.fdl.repository.actualite;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.actualite.Categorie;

@Repository
public interface CategorieRepo extends JpaRepository<Categorie, Long> {

}