package com.fdl.repository.realisation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.realisation.Region;

@Repository
public interface RegionRepo extends JpaRepository<Region, Long> {

}