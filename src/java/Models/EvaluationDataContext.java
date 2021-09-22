/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Ken
 */
public class EvaluationDataContext implements IEvaluationContext {
    private static final List<Evaluation>  listeEvaluations = new ArrayList<>(){
        { 
            add(new Evaluation(1, "Lagace", "Ken", "(819) 123-4456","ken@test.ca",'M',"Moyen",new Date(),"ceci est un test"));
            add(new Evaluation(2, "Tremblay", "André", "(819) 775-4456","simt@test.ca",'M',"Moyen",new Date(),"ceci est un deuxième test"));
        }
    };

    public List<Evaluation> getListeEvaluations() {
        return listeEvaluations;
    }
    
    public static int nouvelleEntree(){
        int nextNum=listeEvaluations.stream().max(
                    (e1,e2)->Integer.compare(e1.getNumero(), e2.getNumero()))
                    .get().getNumero()+1;
        return nextNum;
    }
    
    public Evaluation Rechercher(int numero){
        //J<attend de voir si j<ai la possibité de retourner null dans mon code... Genre si j<ai une recherche sur la page internet ou si c<est toujours par une selection dans une table existante
        //Evaluation evaluation = this.listeEvalutions.stream().filter(p->p.getNumero()==numero).findFirst().get();
        return EvaluationDataContext.listeEvaluations.stream().filter(p->p.getNumero()==numero).findFirst().orElse(null);
    }
    
    @Override
    public void Ajouter(Evaluation evaluation) {
        EvaluationDataContext.listeEvaluations.add(evaluation);
    }
    

    @Override
    public void Supprimer(int numero) {
        EvaluationDataContext.listeEvaluations.remove(Rechercher(numero));
    }

    @Override
    public void Modifier(Evaluation evaluation) {
       int index = listeEvaluations.indexOf(Rechercher(evaluation.getNumero()));
       listeEvaluations.set(index, evaluation);
//        Evaluation e=this.Rechercher(evaluation.getNumero());
//        e.setNumero(evaluation.getNumero());  
//        e.setNom(evaluation.getNom()); 
//        e.setPrenom(evaluation.getPrenom()); 
//        e.setTelephone(evaluation.getTelephone()); 
//        e.setCourriel(evaluation.getCourriel());
//        e.setSexe(evaluation.getSexe()); 
//        e.setNote(evaluation.getNote());
//        e.setDateevaluation(evaluation.getDateevaluation()); 
//        e.setCommentaire(evaluation.getCommentaire()); 
       
    }
}
