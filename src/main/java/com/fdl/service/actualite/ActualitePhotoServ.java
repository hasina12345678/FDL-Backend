package com.fdl.service.actualite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.actualite.ActualitePhoto;
import com.fdl.repository.actualite.ActualitePhotoRepo;

import java.util.List;
import java.util.Optional;

@Service
public class ActualitePhotoServ {

    @Autowired
    private ActualitePhotoRepo actualitePhotoRepo;


    public List<ActualitePhoto> findAll() {
        return actualitePhotoRepo.findAll();
    }


    public ActualitePhoto save(ActualitePhoto actualitePhoto) {
        return actualitePhotoRepo.save(actualitePhoto);
    }


    public ActualitePhoto findById(Long id) {
        return actualitePhotoRepo.findById(id).orElse(null);
    }


    public ActualitePhoto update(Long id, ActualitePhoto actualitePhotoDetails) {

        Optional<ActualitePhoto> actualitePhotoOpt = actualitePhotoRepo.findById(id);

        if (actualitePhotoOpt.isPresent()) {

            ActualitePhoto actualitePhoto = actualitePhotoOpt.get();

            actualitePhoto.setPhoto(actualitePhotoDetails.getPhoto());
            actualitePhoto.setDescription(actualitePhotoDetails.getDescription());
            actualitePhoto.setOrdre(actualitePhotoDetails.getOrdre());
            actualitePhoto.setDetail(actualitePhotoDetails.getDetail());

            return actualitePhotoRepo.save(actualitePhoto);
        }

        return null;
    }


    public void delete(Long id) {
        actualitePhotoRepo.deleteById(id);
    }

}