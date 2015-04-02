package edu.oakland.cse345.mvc.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.oakland.cse345.service.IngredientTypesService;
import edu.oakland.cse345.service.IngredientService;
import edu.oakland.cse345.service.MealTypesService;
import edu.oakland.cse345.mvc.models.IngredientType;
import edu.oakland.cse345.mvc.models.Ingredient;
import edu.oakland.cse345.mvc.models.MealType;

import java.util.List;
import java.util.Objects;

@Controller
public class MainController{
    protected final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    IngredientTypesService indgredientType;
    @Autowired
    MealTypesService mealType;
    @Autowired
    IngredientService ingredientService;

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

    @RequestMapping(value="/ingredienttypes", method=RequestMethod.GET)
    public String getIngredientTypes(Model model) {
        List<IngredientType> types = indgredientType.getAllIngredientType();
        model.addAttribute("types", types.toArray());

        return "ingredienttypes";
    }

    @RequestMapping(value="/ingredienttypes", method=RequestMethod.POST)
    public String getIngredientTypes(Model model, @RequestParam("name") String name) {
            if(!Objects.equals(name, null)) {
                    indgredientType.insertIngredientType(name);
            }

            return "redirect:ingredienttypes";
    }

    @RequestMapping(value="/mealtypes", method=RequestMethod.GET)
    public String getMealTypes(Model model) {
        List<MealType> types = mealType.getAllMealType();
        model.addAttribute("types", types.toArray());

        return "mealtypes";
    }

    @RequestMapping(value="/mealtypes", method=RequestMethod.POST)
    public String getMealTypes(Model model, @RequestParam("name") String name) {
            if(!Objects.equals(name, null)) {
                    mealType.insertMealType(name);
            }

            return "redirect:mealtypes";
    }

    @RequestMapping(value="/ingredient", method=RequestMethod.GET)
    public String getIngredients(Model model) {
        List<Ingredient> types = ingredientService.getAllIngredient();
        model.addAttribute("types", types.toArray());

        return "ingredient";
    }

    @RequestMapping(value="/ingredient", method=RequestMethod.POST)
    public String getIngredients(Model model, @RequestParam("name") String name, @RequestParam("quantity") int q, @RequestParam("type") int t, @RequestParam("bought_date") String b) {
            Ingredient i = new Ingredient();
            i.name = name;
            i.quantity = q;
            i.type_id = t;
            i.bought_date = b;

            ingredientService.insertIngredient(i);

            return "redirect:ingredient";
    }
}
