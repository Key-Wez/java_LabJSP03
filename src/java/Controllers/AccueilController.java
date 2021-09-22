/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Ken
 */
@Controller
public class AccueilController {
    
    @RequestMapping(value="/Accueil/accueil", method=RequestMethod.GET)
        public ModelAndView Accueil(){
        return new ModelAndView("Accueil","page","accueil");
    }   
        
    @RequestMapping(value="/Accueil/contact", method=RequestMethod.GET)
        public ModelAndView Contact(){
        return new ModelAndView("Contact", "page","contact");
    }   
    
}
