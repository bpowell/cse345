package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

import edu.oakland.cse345.Constants;
import edu.oakland.cse345.mvc.models.Ingredient;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

@Service
public class IngredientService extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public Ingredient getIngredient(int id) {
            Ingredient i = null;
            try {
                    i = (Ingredient) this.jdbcPostgres.query("select * from ingredient where id = ?", new Object[] {id}, new IngredientMapper());
            } catch(Exception e) {
                    log.error("{}", e);
            }

            return i;
    }

    public void insertIngredient(Ingredient i) {
            try {
                    this.jdbcPostgres.update("insert into ingredient (name, quantity, type_id, bought_date) values(?, ?, ?, ?)", new Object[] {i.name, i.quantity, i.type_id, i.bought_date});
            } catch(Exception e) {
                    log.error("{}", e);
            }
    }

    public List<Ingredient> getAllIngredient() {
            try{
                    List<Ingredient> ingred = new ArrayList<Ingredient>();
                    ingred.addAll(this.jdbcPostgres.query("select * from ingredient", new IngredientMapper()));
                    return ingred;
            } catch(Exception e) {
                    throw new IllegalArgumentException(e.getMessage());
            }
    }

    private class IngredientMapper implements RowMapper<Ingredient>{
            public Ingredient mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Ingredient i = new Ingredient();
                    i.id = rs.getInt("id");
                    i.name = rs.getString("name");
                    i.quantity = rs.getInt("quantity");
                    i.type_id = rs.getInt("type_id");
                    i.bought_date = rs.getString("bought_date");
                    return i;
            }
    }
}
