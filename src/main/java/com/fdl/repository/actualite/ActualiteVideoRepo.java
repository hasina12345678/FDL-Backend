package com.fdl.repository.actualite;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fdl.model.actualite.ActualiteVideo;

@Repository
public interface ActualiteVideoRepo extends JpaRepository<ActualiteVideo, Long> {

}