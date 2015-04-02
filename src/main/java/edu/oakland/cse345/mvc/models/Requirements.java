package edu.oakland.cse345.mvc.models;

public class Requirements {
    public int id;
    public int recipes_id;
    public int ingredient_id;

    public Requirements(int id, int recipes_id, int ingredient_id) {
            this.id = id;
            this.recipes_id = recipes_id;
            this.ingredient_id = ingredient_id;
    }

    public Requirements() {}
    public int getId() {return id;}
    public int getRecipes_id() {return recipes_id;}
    public int getIngredient_id() {return ingredient_id;}
}
