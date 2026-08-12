package com.fdl.repository.actualite;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.actualite.Auteur;

@Repository
public interface AuteurRepo extends JpaRepository<Auteur, Long> {

}