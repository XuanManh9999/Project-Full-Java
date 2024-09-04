package com.javaweb.service;

import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.dto.SearchBuildingDTO;

import java.util.List;

public interface IBuildingService {
    List<SearchBuildingDTO> searchBuilding(SearchBuildingDTO searchBuildingDTO);
}
