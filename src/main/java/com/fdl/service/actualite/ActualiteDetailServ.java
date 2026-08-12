package com.fdl.service.actualite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.actualite.ActualiteDetail;
import com.fdl.repository.actualite.ActualiteDetailRepo;

import java.util.List;
import java.util.Optional;

@Service
public class ActualiteDetailServ {

    @Autowired
    private ActualiteDetailRepo actualiteDetailRepo;


    public List<ActualiteDetail> findAll() {
        return actualiteDetailRepo.findAll();
    }


    public ActualiteDetail save(ActualiteDetail actualiteDetail) {
        return actualiteDetailRepo.save(actualiteDetail);
    }


    public ActualiteDetail findById(Long id) {
        return actualiteDetailRepo.findById(id).orElse(null);
    }


    public ActualiteDetail update(Long id, ActualiteDetail actualiteDetailDetails) {

        Optional<ActualiteDetail> actualiteDetailOpt = actualiteDetailRepo.findById(id);

        if (actualiteDetailOpt.isPresent()) {

            ActualiteDetail actualiteDetail = actualiteDetailOpt.get();

            actualiteDetail.setSubtitle(actualiteDetailDetails.getSubtitle());
            actualiteDetail.setParagraphe(actualiteDetailDetails.getParagraphe());
            actualiteDetail.setActualite(actualiteDetailDetails.getActualite());
            actualiteDetail.setPhotos(actualiteDetailDetails.getPhotos());
            actualiteDetail.setVideos(actualiteDetailDetails.getVideos());
            actualiteDetail.setDocuments(actualiteDetailDetails.getDocuments());

            return actualiteDetailRepo.save(actualiteDetail);
        }

        return null;
    }


    public void delete(Long id) {
        actualiteDetailRepo.deleteById(id);
    }

}