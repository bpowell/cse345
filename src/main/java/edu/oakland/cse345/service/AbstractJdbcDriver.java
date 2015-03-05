package edu.oakland.cse345.service;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.annotation.Resource;

public abstract class AbstractJdbcDriver{
    protected JdbcTemplate jdbcPostgres;

    @Resource(name="postgresDataSource")
    public void setPostgresDataSource(DataSource ds){
        this.jdbcPostgres = new JdbcTemplate(ds);
    }
}
