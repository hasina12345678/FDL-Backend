package com.fdl.dto.actualites;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ActualiteListDTO {
    private Long id;
    private String title;
    private String summary;
    private String location;
    private String cover;
    private Long auteurId;
    private String auteurNom;      // "Prénom Nom", ou null si auteur absent
    private List<String> categories;
    private LocalDateTime createdAt;
}