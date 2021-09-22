/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Ken
 */
public class Evaluation {
    //Déclaration des propriétés (définition)
    private int numero;
    private String nom;
    private String prenom;
    private String telephone;
    private String courriel;
    private char sexe;
    private String note;
    //private Calendar dateevaluation;
    private Date dateevaluation;
    private String commentaire;    

    //Définir les méthodes d'accès (set et get)
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getCourriel() {
        return courriel;
    }

    public void setCourriel(String courriel) {
        this.courriel = courriel;
    }

    public char getSexe() {
        return sexe;
    }

    public void setSexe(char sexe) {
        this.sexe = sexe;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

        public Date getDateevaluation() {
        return dateevaluation;
    }
        
      //https://stackoverflow.com/questions/999172/how-to-parse-a-date
        
        public String getDateToString(){
    
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String formattedDate = formatter.format(this.getDateevaluation());
            return formattedDate;
}

    public void setDateevaluation(Date dateevaluation) {
        this.dateevaluation = dateevaluation;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }
    
    //Définir les constructeurs
    public Evaluation() {
    }
    
    public Evaluation(int numero, String nom, String prenom, String telephone, String courriel, char sexe, String note, Date dateevaluation, String commentaire) {
        this.numero = numero;
        this.nom = nom;
        this.prenom = prenom;
        this.telephone = telephone;
        this.courriel = courriel;
        this.sexe = sexe;
        this.note = note;
        this.dateevaluation = dateevaluation;
        this.commentaire = commentaire;
    }
    
    // Définition de la méthode To String
   
    
    //La déclaration d'une méthode abstraite
    
     public void Mapper(HttpServletRequest request){

         
         String strDate = request.getParameter("date");
         
         SimpleDateFormat objDateFormat = new SimpleDateFormat("yyyy-MM-dd");
         Date parseDate = null;
         try{
             parseDate = objDateFormat.parse(strDate);
         } catch(ParseException ex){
             System.err.println(ex.getMessage());
         }
    
        this.setNumero(Integer.parseInt(request.getParameter("numero")));
        this.setNom(request.getParameter("nom"));
        this.setPrenom(request.getParameter("prenom"));
        this.setTelephone(request.getParameter("telephone"));
        this.setCourriel(request.getParameter("courriel"));
        this.setSexe(request.getParameter("sexe").charAt(0));    
        this.setNote(request.getParameter("note"));
        this.setDateevaluation(parseDate);
        this.setCommentaire(request.getParameter("commentaire"));
    }
}
