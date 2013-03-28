/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Coordinator;
/**
 *
 * @author MigzMeizter
 */
public abstract class CoordinatorDAO{

   public abstract Coordinator checker(String username,String password);
//    public abstract void addCoordinator(Coordinator coor);
//    public abstract void editCoordinator(Coordinator coor);
}
