package com.fdl.repository.actualite;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.actualite.ActualiteDetail;

@Repository
public interface ActualiteDetailRepo extends JpaRepository<ActualiteDetail, Long> {

}