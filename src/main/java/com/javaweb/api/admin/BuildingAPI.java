package com.javaweb.api.admin;

import com.javaweb.model.dto.SearchBuildingDTO;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;


@RestController
@RequestMapping(value = "/api/v1")
public class BuildingAPI {
    @GetMapping(value = "/search-building")
    // @RequestParam HashMap<String, Object> params
    public void searchBuilding(@ModelAttribute SearchBuildingDTO searchBuildingDTO) {
        System.out.println("Hello");
    }

}
