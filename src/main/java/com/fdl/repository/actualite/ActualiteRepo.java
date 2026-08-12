package com.fdl.repository.actualite;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.actualite.Actualite;

@Repository
public interface ActualiteRepo extends JpaRepository<Actualite, Long> {

}