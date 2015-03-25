package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import edu.oakland.cse345.Constants;

@Service
public class CreateIngredientType extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public void insert(String name) {
            try{ 
                    this.jdbcPostgres.update(Constants.ADD_INGREDIENT_TYPE_SQL, name);
            } catch(Exception e) {
                    log.error("{}", e);
            }
    }
}
