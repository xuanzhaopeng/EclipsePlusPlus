/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.ece.epp.build.controller;

import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 *
 * @author Chris
 */
public class BuildManager {
    
    private Integer index = 0;
    private ExecutorService pool = Executors.newFixedThreadPool(10);
    private HashMap<Integer, Future<String>> map = new HashMap<Integer, Future<String>>();

    public BuildManager() {
        
    }

    public Integer addBuild(BuildCallable build) {
        Future<String> submit = pool.submit(build);
        map.put(index, submit);
        return index++;
    }
    
    public Future<String> getResult(Integer index) {
        return map.get(index);
    }
}
