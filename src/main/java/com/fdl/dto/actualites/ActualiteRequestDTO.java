package com.fdl.dto.actualites;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ActualiteRequestDTO {
    private String title;
    private String summary;
    private String location;
    private String cover;
    private Long auteurId;              // NULLABLE — l'auteur est optionnel
    private List<Long> categorieIds;
    private List<DetailRequest> details;

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    public static class DetailRequest {
        private String subtitle;
        private String paragraphe;
        private List<MediaRequest> photos;
        private List<MediaRequest> videos;
        private List<MediaRequest> documents;
    }

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    public static class MediaRequest {
        private String url;
        private String description;
        private Integer ordre;
    }
}