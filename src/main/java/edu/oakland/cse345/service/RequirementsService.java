package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

import edu.oakland.cse345.Constants;
import edu.oakland.cse345.mvc.models.Requirements;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

@Service
public class RequirementsService extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public Requirements getRequirements(int id) {
            try {
                    return (Requirements) this.jdbcPostgres.queryForObject("select * from requirements where id = ?", new Object[] {id}, new RequirementsMapper());
            } catch(Exception e) {
                    log.error("{}", e);
            }
            return null;
    }

    public void insertRequirements(int rid, int iid) {
            try {
                    this.jdbcPostgres.update("insert into requirements (recipes_id, ingredient_id) values (?, ?)", rid, iid);
            } catch(Exception e) {
                    log.error("{}", e);
            }
    }

    public List<Requirements> getAllRequirements() {
            try{
                    List<Requirements> meals = new ArrayList<Requirements>();
                    meals.addAll(this.jdbcPostgres.query("select * from requirements", new RequirementsMapper()));
                    return meals;
            } catch(Exception e) {
                    throw new IllegalArgumentException(e.getMessage());
            }
    }

    private class RequirementsMapper implements RowMapper<Requirements>{
            public Requirements mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Requirements r = new Requirements();
                    r.id = rs.getInt("id");
                    r.recipes_id = rs.getInt("recipes_id");
                    r.ingredient_id = rs.getInt("ingredient_id");
                    return r;
            }
    }
}
