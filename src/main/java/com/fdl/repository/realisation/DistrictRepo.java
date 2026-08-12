package com.fdl.repository.realisation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.realisation.District;

@Repository
public interface DistrictRepo extends JpaRepository<District, Long> {

}