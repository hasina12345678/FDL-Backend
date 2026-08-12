package com.fdl.repository.realisation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.realisation.Realisation;

@Repository
public interface RealisationRepo extends JpaRepository<Realisation, Long> {

}