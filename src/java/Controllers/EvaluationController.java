/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Evaluation;
import Models.EvaluationDataContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Ken
 */
@Controller
public class EvaluationController {
    private final EvaluationDataContext dc = new EvaluationDataContext();
    
        
    //  *******************  Methode LISTE
    @RequestMapping("/Evaluation/liste")
    public ModelAndView Liste(){
        //return new ModelAndView("Liste", "ListeEvaluations",dc.getListeEvaluations());
        ModelAndView modelView = new ModelAndView("Liste");
        modelView.addObject("ListeEvaluations",dc.getListeEvaluations());
        modelView.addObject("page", "liste");
        return modelView;
    }
    
    //  *******************  Methode AJOUTER
    @RequestMapping(value="/Evaluation/ajouter", method=RequestMethod.GET)    
    // 2e methode
        public ModelAndView ajouterProduit(){
        ModelAndView modelView = new ModelAndView("Ajouter");
        modelView.addObject("Liste",dc);
        modelView.addObject("page", "ajouter");
        return modelView;
    }
    
    @RequestMapping(value="/Evaluation/ajouter", method=RequestMethod.POST)
    public String ajouterProduit(HttpServletRequest request){
        //création d'un objet de type produit
        Evaluation ev = new Evaluation();
        //remplir les valeur du formulaire
        ev.Mapper(request);
        //ajouter à la liste
        dc.Ajouter(ev);        
        //retourner à la page liste
        return "redirect:/Evaluation/liste";
    } 
    
    //  *******************  Methode SUPPRIMER
    @RequestMapping("/Evaluation/supprimer/{numero}")
    public String supprimerProduit(@PathVariable int numero){
        //supprimer l'élément
        dc.Supprimer(numero);
        //retourner la vue liste
        return "redirect:/Evaluation/liste";
    }
      
    //  *******************  Methode MODIFIER
    @RequestMapping(value="/Evaluation/modifier/{numero}", method=RequestMethod.GET)
    public ModelAndView modifierProduit(@PathVariable int numero){
        //rechercher l'élément
        Evaluation ev = dc.Rechercher(numero);
        //ouvrir la vue en lui passant le produit
        return new ModelAndView("Modifier","Evaluation",ev);
    }
    
    @RequestMapping(value="/Evaluation/modifier", method=RequestMethod.POST)
    public String modifierProduit(HttpServletRequest request){
        //récupérer le numero du produit à afficher
        Evaluation ev = new Evaluation();
        ev.Mapper(request);
        dc.Modifier(ev);

        //rediriger vers la mthode d'action "listeProduit"
        return "redirect:/Evaluation/liste"; // équivalent de SendRedirect
    }
    
    
    
}
