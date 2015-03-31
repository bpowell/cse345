package edu.oakland.cse345.mvc.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.oakland.cse345.service.IngredientTypesService;
import edu.oakland.cse345.mvc.models.IngredientType;

import java.util.List;

@Controller
public class MainController{
    protected final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    IngredientTypesService indgredientType;

    @RequestMapping("/")
    public String getIndex(Model model){
        log.trace("MainController -> Entering getIndex(model=)");
        log.trace("MainController -> Leaving getIndex(): index");
        indgredientType.insertIngredientType("test");
        String type = indgredientType.getIngredientType(1);
        model.addAttribute("type", type);

        List<IngredientType> types = indgredientType.getAllIngredientType();
        model.addAttribute("size", types.size());
        return "index";
    }
}
