package com.fdl.service.actualite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdl.model.actualite.ActualiteDocument;
import com.fdl.repository.actualite.ActualiteDocumentRepo;

import java.util.List;
import java.util.Optional;

@Service
public class ActualiteDocumentServ {

    @Autowired
    private ActualiteDocumentRepo actualiteDocumentRepo;


    public List<ActualiteDocument> findAll() {
        return actualiteDocumentRepo.findAll();
    }


    public ActualiteDocument save(ActualiteDocument actualiteDocument) {
        return actualiteDocumentRepo.save(actualiteDocument);
    }


    public ActualiteDocument findById(Long id) {
        return actualiteDocumentRepo.findById(id).orElse(null);
    }


    public ActualiteDocument update(Long id, ActualiteDocument actualiteDocumentDetails) {

        Optional<ActualiteDocument> actualiteDocumentOpt = actualiteDocumentRepo.findById(id);

        if (actualiteDocumentOpt.isPresent()) {

            ActualiteDocument actualiteDocument = actualiteDocumentOpt.get();

            actualiteDocument.setDocument(actualiteDocumentDetails.getDocument());
            actualiteDocument.setDescription(actualiteDocumentDetails.getDescription());
            actualiteDocument.setOrdre(actualiteDocumentDetails.getOrdre());
            actualiteDocument.setDetail(actualiteDocumentDetails.getDetail());

            return actualiteDocumentRepo.save(actualiteDocument);
        }

        return null;
    }


    public void delete(Long id) {
        actualiteDocumentRepo.deleteById(id);
    }

}