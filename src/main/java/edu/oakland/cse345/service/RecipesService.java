package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

import edu.oakland.cse345.Constants;
import edu.oakland.cse345.mvc.models.Recipes;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

@Service
public class RecipesService extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public Recipes getRecipes(int id) {
            try {
                    return (Recipes) this.jdbcPostgres.queryForObject("select * from recipes where id = ?", new Object[] {id}, new RecipesMapper());
            } catch(Exception e) {
                    log.error("{}", e);
            }
            return null;
    }

    public void insertRecipes(int rid, int iid) {
            try {
                    this.jdbcPostgres.update("insert into recipes (menu_items_id, ingredient_id) values (?, ?)", rid, iid);
            } catch(Exception e) {
                    log.error("{}", e);
            }
    }

    public List<Recipes> getAllRecipes() {
            try{
                    List<Recipes> meals = new ArrayList<Recipes>();
                    meals.addAll(this.jdbcPostgres.query("select * from recipes", new RecipesMapper()));
                    return meals;
            } catch(Exception e) {
                    throw new IllegalArgumentException(e.getMessage());
            }
    }

    private class RecipesMapper implements RowMapper<Recipes>{
            public Recipes mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Recipes r = new Recipes();
                    r.id = rs.getInt("id");
                    r.menu_items_id = rs.getInt("menu_items_id");
                    r.ingredient_id = rs.getInt("ingredient_id");
                    return r;
            }
    }
}
