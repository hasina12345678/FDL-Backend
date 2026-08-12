package com.fdl.dto.realisations;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CommuneDTO {

    private Long id;
    private String name;
    private Long districtId;
    private String districtName;

}