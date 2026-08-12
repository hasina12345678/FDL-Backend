package com.fdl.dto.realisations;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProgrammeDTO {

    private Long id;
    private String code;
    private String name;
    private String description;

}