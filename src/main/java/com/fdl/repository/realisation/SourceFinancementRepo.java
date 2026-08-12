package com.fdl.repository.realisation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.realisation.SourceFinancement;

@Repository
public interface SourceFinancementRepo extends JpaRepository<SourceFinancement, Long> {

}