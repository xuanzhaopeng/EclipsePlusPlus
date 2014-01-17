/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.ece.epp.build;

import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/**
 *
 * @author Chris
 */
public class EppManager {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws InterruptedException, ExecutionException {
        // TODO code application logic here
        
        BuildManager buildManager = new BuildManager();
        ArrayList<Integer> l = new ArrayList();
        System.out.println("EppManager starting...");
        
        for(int i = 0; i < 200; i++) {
            BuildCallable b = new BuildCallable();
            b.setCommand("mvn");
            l.add(buildManager.addBuild(b));
        }
        
        for(Integer i: l) {
            Future<String> res = buildManager.getResult(i);
            System.out.println(res.get());
        }
    }
    
}
