package edu.oakland.cse345.mvc.models;

public class Recipes {
    public int id;
    public int menu_items_id;
    public int ingredient_id;

    public Recipes(int id, int menu_items_id, int ingredient_id) {
            this.id = id;
            this.menu_items_id = menu_items_id;
            this.ingredient_id = ingredient_id;
    }

    public Recipes() {}
    public int getId() {return id;}
    public int getMenuItems_id() {return menu_items_id;}
    public int getIngredient_id() {return ingredient_id;}
}
