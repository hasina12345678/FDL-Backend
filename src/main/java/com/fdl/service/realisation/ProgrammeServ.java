package com.fdl.service.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.realisation.Programme;
import com.fdl.repository.realisation.ProgrammeRepo;

import java.util.List;
import java.util.Optional;

@Service
public class ProgrammeServ {

    @Autowired
    private ProgrammeRepo programmeRepo;


    public List<Programme> findAll() {
        return programmeRepo.findAll();
    }


    public Programme save(Programme programme) {
        return programmeRepo.save(programme);
    }


    public Programme findById(Long id) {
        return programmeRepo.findById(id).orElse(null);
    }


    public Programme update(Long id, Programme programmeDetails) {

        Optional<Programme> programmeOpt = programmeRepo.findById(id);

        if (programmeOpt.isPresent()) {

            Programme programme = programmeOpt.get();

            programme.setCode(programmeDetails.getCode());
            programme.setName(programmeDetails.getName());
            programme.setDescription(programmeDetails.getDescription());

            return programmeRepo.save(programme);
        }

        return null;
    }


    public void delete(Long id) {
        programmeRepo.deleteById(id);
    }

}