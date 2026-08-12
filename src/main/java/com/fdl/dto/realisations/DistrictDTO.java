package com.fdl.dto.realisations;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DistrictDTO {

    private Long id;
    private String name;
    private String code;
    private Long regionId;
    private String regionName;

}