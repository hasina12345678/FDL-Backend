package com.fdl.controller.actualite;

import com.fdl.dto.actualites.ActualiteDetailDTO;
import com.fdl.dto.actualites.ActualiteListDTO;
import com.fdl.dto.actualites.ActualiteRequestDTO;
import com.fdl.model.actualite.Actualite;
import com.fdl.service.actualite.ActualiteServ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/actualites")
public class ActualiteCtrl {

    @Autowired
    private ActualiteServ actualiteServ;

    @GetMapping
    public List<ActualiteListDTO> findAll() {
        return actualiteServ.findAll();
    }

    @GetMapping("/paged")
    public ResponseEntity<Map<String, Object>> findPaged(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {

        Pageable pageable = PageRequest.of(page, size, Sort.by("createdAt").descending());
        Page<Actualite> result = actualiteServ.findAllPaged(pageable);

        Map<String, Object> response = new HashMap<>();
        response.put("items", result.getContent().stream().map(actualiteServ::toListDTO).toList());
        response.put("hasMore", !result.isLast());
        response.put("page", page);

        return ResponseEntity.ok(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ActualiteDetailDTO> findById(@PathVariable Long id) {
        Actualite actualite = actualiteServ.findById(id);
        if (actualite == null) return ResponseEntity.notFound().build();
        return ResponseEntity.ok(actualiteServ.toDetailDTO(actualite));
    }

    @PostMapping
    public ResponseEntity<ActualiteDetailDTO> create(@RequestBody ActualiteRequestDTO dto) {
        Actualite saved = actualiteServ.create(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(actualiteServ.toDetailDTO(saved));
    }

    @PutMapping("/{id}")
    public ResponseEntity<ActualiteDetailDTO> update(@PathVariable Long id, @RequestBody ActualiteRequestDTO dto) {
        Actualite updated = actualiteServ.update(id, dto);
        if (updated == null) return ResponseEntity.notFound().build();
        return ResponseEntity.ok(actualiteServ.toDetailDTO(updated));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        Actualite actualite = actualiteServ.findById(id);
        if (actualite == null) return ResponseEntity.notFound().build();
        actualiteServ.delete(id);
        return ResponseEntity.noContent().build();
    }
}