package edu.oakland.cse345.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

import edu.oakland.cse345.Constants;
import edu.oakland.cse345.mvc.models.Employee;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.*;

@Service
public class EmployeeService extends AbstractJdbcDriver {
	protected final Logger log = LoggerFactory.getLogger(getClass());

    public List<Employee> getAllEmployees() {
            try{
                    List<Employee> e = new ArrayList<Employee>();
                    e.addAll(this.jdbcPostgres.query("select * from employee", new EmployeeMapper()));
                    return e;
            } catch(Exception er) {
                    throw new IllegalArgumentException(er.getMessage());
            }
    }

    private class EmployeeMapper implements RowMapper<Employee>{
            public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Employee r = new Employee();
                    r.name = rs.getString("name");
                    r.id = rs.getInt("id");
                    r.address = rs.getString("address");
                    r.city = rs.getString("city");
                    r.state = rs.getString("state");
                    r.wage = rs.getInt("wage");
                    return r;
            }
    }
}
