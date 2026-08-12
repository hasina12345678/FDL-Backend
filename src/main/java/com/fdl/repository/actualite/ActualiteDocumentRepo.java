package com.fdl.repository.actualite;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.actualite.ActualiteDocument;

@Repository
public interface ActualiteDocumentRepo extends JpaRepository<ActualiteDocument, Long> {

}