/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.ece.epp.build;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Chris
 */
public class BuildJob {

    private Integer id;
    private Date creationDate;
    private String status;
    private String buildBy;
    private String pathToPomFile;
    private String pathToBuild;

    public BuildJob() throws ClassNotFoundException, SQLException {
    }

    public BuildJob(Integer id, String status, String buildBy, String pathToPomFile) throws ClassNotFoundException, SQLException {
        this.id = id;
        this.status = status;
        this.buildBy = buildBy;
        this.pathToPomFile = pathToPomFile;
    }

    public Integer getId() {
        return id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) throws SQLException {
        this.status = status;
    }

    public String getBuildBy() {
        return buildBy;
    }

    public String getPathToPomFile() {
        return pathToPomFile;
    }
    
    
    public String getPathToBuild() {
        return pathToBuild;
    }

    public void setPathToBuild(String pathToBuild) throws SQLException {
        this.pathToBuild = pathToBuild;
    }
}
