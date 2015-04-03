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
import edu.oakland.cse345.service.RequirementsService;
import edu.oakland.cse345.service.EmployeeService;
import edu.oakland.cse345.service.RecipesService;
import edu.oakland.cse345.service.MealTypesService;
import edu.oakland.cse345.mvc.models.IngredientType;
import edu.oakland.cse345.mvc.models.Ingredient;
import edu.oakland.cse345.mvc.models.MealType;
import edu.oakland.cse345.mvc.models.Recipes;
import edu.oakland.cse345.mvc.models.Requirements;
import edu.oakland.cse345.mvc.models.Employee;

import java.util.List;
import java.util.ArrayList;
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
    @Autowired
    RequirementsService requirement;
    @Autowired
    RecipesService recipe;
    @Autowired
    EmployeeService employee;

    @RequestMapping("/")
    public String getIndex(Model model){
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

    @RequestMapping(value="/requirements", method=RequestMethod.GET)
    public String getRequirementss(Model model) {
        List<Requirements> types = requirement.getAllRequirements();
        model.addAttribute("types", types.toArray());

        return "requirements";
    }

    @RequestMapping(value="/requirements", method=RequestMethod.POST)
    public String getRequirementss(Model model, @RequestParam("recipe") int rid, @RequestParam("ingredient") int iid) {
            requirement.insertRequirements(rid, iid);

            return "redirect:requirements";
    }

    @RequestMapping(value="/recipes", method=RequestMethod.GET)
    public String getRecipess(Model model) {
        List<Recipes> types = recipe.getAllRecipes();
        model.addAttribute("types", types.toArray());

        return "recipes";
    }

    @RequestMapping(value="/recipes", method=RequestMethod.POST)
    public String getRecipess(Model model, @RequestParam("name") String name, @RequestParam("m") int m, @RequestParam("r") int r, @RequestParam("n") int n, @RequestParam("s") int s, @RequestParam("c") int c) {
            recipe.insertRecipes(name, m, r, s, n, c);

            return "redirect:recipes";
    }

    @RequestMapping(value="/employee", method=RequestMethod.GET)
    public String getEmployees(Model model) {
        List<Employee> types = employee.getAllEmployees();
        model.addAttribute("types", types.toArray());

        return "employee";
    }

    @RequestMapping(value="/search", method=RequestMethod.POST)
            public String search(Model model, @RequestParam("name") String name, @RequestParam("type") String type) {
                    if(type.equals("ingredient")) {
                            List<Ingredient> types = ingredientService.getByName(name);
                            model.addAttribute("types", types);
                            return "ingredient";
                    }

                    return "";
            }

    @RequestMapping(value="/rinfo", method=RequestMethod.POST)
    public String search(Model model, @RequestParam("id") int id) {
        List<Recipes> types = new ArrayList<Recipes>();
        types.add(recipe.getRecipes(id));
        model.addAttribute("types", types.toArray());
        log.info("size {}", types.size());
        log.info("{}", types.get(0).name);
        return "rinfo";
    }
}
