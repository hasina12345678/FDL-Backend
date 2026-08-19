package com.fdl.dto.realisations;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class RealisationDTO {

    private Long id;
    private String title;
    private String summary;
    private String description;

    private Long communeId;
    private String communeName;

    private Long categorieId;
    private String categorieName;

    private Long programmeId;
    private String programmeName;

    private Long sourceFinancementId;
    private String sourceFinancementName;

    private Integer annee;
    private LocalDate dateRealisation;
    private BigDecimal montant;
    private BigDecimal latitude;
    private BigDecimal longitude;
    private String photo;

    private Integer photoWidth;
    private Integer photoHeight;
    private String photoColor;

    private LocalDateTime createdAt;

}