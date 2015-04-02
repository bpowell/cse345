package edu.oakland.cse345.mvc.models;

public class Ingredient {
    public int id;
    public String name;
    public int quantity;
    public int type_id;
    public String bought_date;

    public Ingredient(int id, String name, int quantity, int type_id) {
            this.id = id;
            this.name = name;
            this.quantity = quantity;
            this.type_id = type_id;
    }

    public Ingredient() {}
    public int getId() {return id;}
    public String getName() {return name;}
    public int getQuantity() {return quantity;}
    public int getType_id() {return type_id;}
    public String getBought_date() {return bought_date;}
}
