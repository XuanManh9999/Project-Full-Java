package com.javaweb.repository.custom;

import com.javaweb.model.dto.SearchBuildingDTO;

public interface BuildingRepository {
    SearchBuildingDTO searchBuilding(SearchBuildingDTO searchBuildingDTO);
}
