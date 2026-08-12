package com.fdl.repository.utilisateur;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.utilisateur.Utilisateur;

import java.util.Optional;


@Repository
public interface UtilisateurRepo extends JpaRepository<Utilisateur, Long> {


    Optional<Utilisateur> findByEmail(String email);


}