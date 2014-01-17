/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.ece.epp.build;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;

/**
 *
 * @author Chris
 */
public class BuildCallable implements Callable {

    private String command;
    private String pathToPomFile;

    public String getPathToPomFile() {
        return pathToPomFile;
    }

    public void setPathToPomFile(String pathToPomFile) {
        this.pathToPomFile = pathToPomFile;
    }

    public String getCommand() {
        return command;
    }

    public void setCommand(String command) {
        this.command = command;
    }

    @Override
    public Object call() throws Exception {
        Process proc = Runtime.getRuntime().exec(command);
        java.io.InputStream is = proc.getInputStream();
        java.util.Scanner s = new java.util.Scanner(is).useDelimiter("\\A");
        String val = "";
        if (s.hasNext()) {
            val = s.next();
        } else {
            val = "";
        }
        return val;
    }
}
