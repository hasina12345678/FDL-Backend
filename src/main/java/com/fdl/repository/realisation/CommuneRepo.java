package com.fdl.repository.realisation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.realisation.Commune;

@Repository
public interface CommuneRepo extends JpaRepository<Commune, Long> {

}