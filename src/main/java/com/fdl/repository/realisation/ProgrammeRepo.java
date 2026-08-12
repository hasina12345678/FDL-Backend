package com.fdl.repository.realisation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.realisation.Programme;

@Repository
public interface ProgrammeRepo extends JpaRepository<Programme, Long> {

}