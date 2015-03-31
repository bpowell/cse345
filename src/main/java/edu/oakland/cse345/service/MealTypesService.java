package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

import edu.oakland.cse345.Constants;
import edu.oakland.cse345.mvc.models.MealType;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

@Service
public class MealTypesService extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public String getMealType(int id) {
            String type = null;
            try {
                    type = this.jdbcPostgres.queryForObject("select name from meal_type where id = ?", new Object[] {id}, String.class);
            } catch(Exception e) {
                    log.error("{}", e);
            }

            return type;
    }

    public void insertMealType(String name) {
            try {
                    this.jdbcPostgres.update("insert into meal_type (name) values (?)", name);
            } catch(Exception e) {
                    log.error("{}", e);
            }
    }

    public List<MealType> getAllMealType() {
            try{
                    List<MealType> meals = new ArrayList<MealType>();
                    meals.addAll(this.jdbcPostgres.query("select * from meal_type", new MealMapper()));
                    return meals;
            } catch(Exception e) {
                    throw new IllegalArgumentException(e.getMessage());
            }
    }

    private class MealMapper implements RowMapper<MealType>{
            public MealType mapRow(ResultSet rs, int rowNum) throws SQLException {
                    MealType m = new MealType();
                    m.id = rs.getInt("id");
                    m.name = rs.getString("name");
                    return m;
            }
    }
}
