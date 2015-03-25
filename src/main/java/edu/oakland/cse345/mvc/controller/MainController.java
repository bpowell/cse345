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

import edu.oakland.cse345.service.CreateIngredientType;

@Controller
public class MainController{
    protected final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    CreateIngredientType indgredientType;

    @RequestMapping("/")
    public String getIndex(Model model){
        log.trace("MainController -> Entering getIndex(model=)");
        log.trace("MainController -> Leaving getIndex(): index");
        indgredientType.insert("test");
        return "index";
    }
}
