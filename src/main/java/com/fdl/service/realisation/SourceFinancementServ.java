package com.fdl.service.realisation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.realisation.SourceFinancement;
import com.fdl.repository.realisation.SourceFinancementRepo;

import java.util.List;
import java.util.Optional;

@Service
public class SourceFinancementServ {

    @Autowired
    private SourceFinancementRepo sourceFinancementRepo;


    public List<SourceFinancement> findAll() {
        return sourceFinancementRepo.findAll();
    }


    public SourceFinancement save(SourceFinancement sourceFinancement) {
        return sourceFinancementRepo.save(sourceFinancement);
    }


    public SourceFinancement findById(Long id) {
        return sourceFinancementRepo.findById(id).orElse(null);
    }


    public SourceFinancement update(Long id, SourceFinancement sourceFinancementDetails) {

        Optional<SourceFinancement> sourceOpt = sourceFinancementRepo.findById(id);

        if (sourceOpt.isPresent()) {

            SourceFinancement sourceFinancement = sourceOpt.get();

            sourceFinancement.setName(sourceFinancementDetails.getName());
            sourceFinancement.setDescription(sourceFinancementDetails.getDescription());

            return sourceFinancementRepo.save(sourceFinancement);
        }

        return null;
    }


    public void delete(Long id) {
        sourceFinancementRepo.deleteById(id);
    }

}