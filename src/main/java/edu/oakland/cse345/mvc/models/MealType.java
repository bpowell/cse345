package edu.oakland.cse345.mvc.models;

public class MealType {
        public int id;
        public String name;

        public MealType(int id, String name) {
                this.id = id;
                this.name = name;
        }

        public MealType() {}
        public int getId() {return id;}
        public String getName() {return name;}
}
