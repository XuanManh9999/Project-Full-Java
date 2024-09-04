package com.javaweb.repository.custom.impl;

import com.javaweb.model.dto.SearchBuildingDTO;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class BuildingRepositoryImpl implements BuildingRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public SearchBuildingDTO searchBuilding(SearchBuildingDTO searchBuildingDTO) {
        return null;
    }
}
