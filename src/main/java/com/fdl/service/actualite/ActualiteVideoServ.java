package com.fdl.service.actualite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.actualite.ActualiteVideo;
import com.fdl.repository.actualite.ActualiteVideoRepo;

import java.util.List;
import java.util.Optional;

@Service
public class ActualiteVideoServ {

    @Autowired
    private ActualiteVideoRepo actualiteVideoRepo;


    public List<ActualiteVideo> findAll() {
        return actualiteVideoRepo.findAll();
    }


    public ActualiteVideo save(ActualiteVideo actualiteVideo) {
        return actualiteVideoRepo.save(actualiteVideo);
    }


    public ActualiteVideo findById(Long id) {
        return actualiteVideoRepo.findById(id).orElse(null);
    }


    public ActualiteVideo update(Long id, ActualiteVideo actualiteVideoDetails) {

        Optional<ActualiteVideo> actualiteVideoOpt = actualiteVideoRepo.findById(id);

        if (actualiteVideoOpt.isPresent()) {

            ActualiteVideo actualiteVideo = actualiteVideoOpt.get();

            actualiteVideo.setVideo(actualiteVideoDetails.getVideo());
            actualiteVideo.setDescription(actualiteVideoDetails.getDescription());
            actualiteVideo.setOrdre(actualiteVideoDetails.getOrdre());
            actualiteVideo.setDetail(actualiteVideoDetails.getDetail());

            return actualiteVideoRepo.save(actualiteVideo);
        }

        return null;
    }


    public void delete(Long id) {
        actualiteVideoRepo.deleteById(id);
    }

}