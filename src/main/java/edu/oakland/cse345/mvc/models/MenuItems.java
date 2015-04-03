package edu.oakland.cse345.mvc.models;

public class MenuItems {
        public int id;
        public String name;
        public int recipes_id;
        public int meal_id;
        public int stars;
        public int num_sold;
        public int cost;

        public MenuItems() {}
        public int getId() {return id;}
        public String getName() {return name;}
        public int getRecipes_id() {return recipes_id;}
        public int getMeal_id() {return meal_id;}
        public int getStars() {return stars;}
        public int getNum_sold() {return num_sold;}
        public int getCost() {return cost;}
}
