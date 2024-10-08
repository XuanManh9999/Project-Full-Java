package com.javaweb.controller.admin;


import com.javaweb.model.dto.SearchBuildingDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller(value = "buildingControllerOfAdmin")


public class BuildingController {
    @RequestMapping(value = "/admin/building-list", method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute SearchBuildingDTO searchBuildingDTO, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch", searchBuildingDTO);
        return mav;
    }

    @GetMapping(value = "/admin/building-add")
    public ModelAndView buildingAdd(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        mav.addObject("title", "Sửa | Thêm mới tòa nhà");
        return mav;
    }


}
