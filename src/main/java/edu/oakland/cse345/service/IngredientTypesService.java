package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

import edu.oakland.cse345.Constants;
import edu.oakland.cse345.mvc.models.IngredientType;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

@Service
public class IngredientTypesService extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public String getIngredientType(int id) {
            String type = null;
            try {
                    type = this.jdbcPostgres.queryForObject("select name from ingredient_type where id = ?", new Object[] {id}, String.class);
            } catch(Exception e) {
                    log.error("{}", e);
            }

            return type;
    }

    public void insertIngredientType(String name) {
            try {
                    this.jdbcPostgres.update(Constants.ADD_INGREDIENT_TYPE_SQL, name);
            } catch(Exception e) {
                    log.error("{}", e);
            }
    }

    public List<IngredientType> getAllIngredientType() {
            try{
                    List<IngredientType> ingred = new ArrayList<IngredientType>();
                    ingred.addAll(this.jdbcPostgres.query("select * from ingredient_type", new IngredientMapper()));
                    return ingred;
            } catch(Exception e) {
                    throw new IllegalArgumentException(e.getMessage());
            }
    }

    private class IngredientMapper implements RowMapper<IngredientType>{
            public IngredientType mapRow(ResultSet rs, int rowNum) throws SQLException {
                    IngredientType i = new IngredientType();
                    i.id = rs.getInt("id");
                    i.name = rs.getString("name");
                    return i;
            }
    }
}
