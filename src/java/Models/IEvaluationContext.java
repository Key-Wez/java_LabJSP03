/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Ken
 */
public interface IEvaluationContext {
    public void Ajouter(Evaluation element ) ;
    public void Supprimer(int numero ) ;
    public void Modifier(Evaluation element ) ;
}
