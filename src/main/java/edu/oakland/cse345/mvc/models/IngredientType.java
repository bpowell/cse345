package edu.oakland.cse345.mvc.models;

public class IngredientType {
        public int id;
        public String name;

        public IngredientType(int id, String name) {
                this.id = id;
                this.name = name;
        }

        public IngredientType() {}

        public int getId() {return id;}
        public String getName() {return name;}
}
