package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import edu.oakland.cse345.Constants;

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
}
