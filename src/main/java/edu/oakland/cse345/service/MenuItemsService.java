package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

import edu.oakland.cse345.Constants;
import edu.oakland.cse345.mvc.models.MenuItems;
import edu.oakland.cse345.mvc.models.Ingredient;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

@Service
public class MenuItemsService extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public List<Ingredient> getIngredientsFromMenuId(int id) {
            try {
                    List<Ingredient> a = new ArrayList<Ingredient>();
                    a.addAll(this.jdbcPostgres.query("select * from ingredient where ingredient.id in (select ingredient_id from recipes where recipes.menu_items_id = (select recipes_id from menu_items where menu_items.id = ?))", new Object[] {id}, new IngredientMapper()));
                    return a;
            } catch(Exception e) {
                    log.error("{}", e);
            }
            return null;
    }

    public MenuItems getMenuItems(int id) {
            try {
                    return (MenuItems) this.jdbcPostgres.queryForObject("select * from menu_items where id = ?", new Object[] {id}, new MenuItemsMapper());
            } catch(Exception e) {
                    log.error("{}", e);
            }
            return null;
    }

    public void insertMenuItems(String name, int m, int r, int s, int n, int c) {
            try {
                    this.jdbcPostgres.update("insert into menu_items (name, meal_id, recipes_id, stars, num_sold, cost) values (?, ?, ?, ?, ?, ?)", name, m, r, s, n, c);
            } catch(Exception e) {
                    log.error("{}", e);
            }
    }

    public List<MenuItems> getAllMenuItems() {
            try{
                    List<MenuItems> meals = new ArrayList<MenuItems>();
                    meals.addAll(this.jdbcPostgres.query("select * from menu_items", new MenuItemsMapper()));
                    return meals;
            } catch(Exception e) {
                    throw new IllegalArgumentException(e.getMessage());
            }
    }

    private class MenuItemsMapper implements RowMapper<MenuItems>{
            public MenuItems mapRow(ResultSet rs, int rowNum) throws SQLException {
                    MenuItems r = new MenuItems();
                    r.name = rs.getString("name");
                    r.id = rs.getInt("id");
                    r.meal_id = rs.getInt("meal_id");
                    r.recipes_id = rs.getInt("recipes_id");
                    r.stars = rs.getInt("stars");
                    r.num_sold = rs.getInt("num_sold");
                    r.cost = rs.getInt("cost");
                    return r;
            }
    }
}
