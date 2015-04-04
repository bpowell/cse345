package edu.oakland.cse345.service;

import edu.oakland.cse345.mvc.models.Ingredient;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

class IngredientMapper implements RowMapper<Ingredient>{
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
