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
public class ActualiteDetailDTO {
    private Long id;
    private String title;
    private String summary;
    private String location;
    private String cover;
    private Long auteurId;
    private String auteurNom;
    private String auteurFonction;
    private List<String> categories;
    private LocalDateTime createdAt;
    private List<DetailBlockDTO> details;

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    public static class DetailBlockDTO {
        private Long id;
        private String subtitle;
        private String paragraphe;
        private List<MediaDTO> photos;
        private List<MediaDTO> videos;
        private List<MediaDTO> documents;
    }

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    public static class MediaDTO {
        private Long id;
        private String url;         // photo / video / document selon le contexte
        private String description;
        private Integer ordre;
    }
}