package com.javaweb.service.impl;

import com.javaweb.model.dto.SearchBuildingDTO;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import com.javaweb.service.IBuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;


@Service
public class BuildingService implements IBuildingService {

    @Autowired
    private BuildingRepositoryCustom buildingRepository;

    @Override
    public List<SearchBuildingDTO> searchBuilding(SearchBuildingDTO searchBuildingDTO) {
        return Collections.emptyList();
    }
}
