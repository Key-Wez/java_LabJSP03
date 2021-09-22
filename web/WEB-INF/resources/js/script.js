/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function test(){
    alert("Test est fonctionnel");
}


function validation() {

	var estValide = true;

        const numero = document.forms["formulaire"]["numero"].value;
        const nom = document.forms["formulaire"]["nom"].value;
        const prenom = document.forms["formulaire"]["prenom"].value;
	const tel = document.forms["formulaire"]["telephone"];
        const courriel = document.forms["formulaire"]["courriel"].value;
        const sexe = document.forms["formulaire"]["sexe"].value;
        const note = document.forms["formulaire"]["note"].value;
        const date = document.forms["formulaire"]["date"].value;
        const commentaire = document.forms["formulaire"]["commentaire"].value;
        
        //Vérifier que tout les champs soient remplis... sauf les commentaire que je pense facultatif dans ce cas-ci
        if(!numero || !nom || !prenom || !tel.value || !courriel || !sexe || !note || !date){
            estValide = false;
            alert("Tout les champs doivent être remplis");
        }


        //Vérifier téléphone est valide et mettre un format standard
        let telephoneValide = /^\(?(\d{3})\)?[ -]?(\d{3})[ -]?(\d{4})$/.test(tel.value);

        if (!telephoneValide) {
        estValide = false;
        alert("entrez un Numéro de téléphone à 10 chiffres");
        }

        tel.value = tel.value.replace(/\(?(\d{3})\)?[ -]?(\d{3})[ -]?(\d{4})/, "($1) $2-$3");

        //Vérifier courriel --  c'est un REGEX vite fait ce n'est pas blindé du tout comme test.
        let courrielValide = /[\w]+@{1}[\w]+\.[a-z]{2,3}/.test(courriel);

        if (!courrielValide) {
        alert("Entrez une adresse courriel valide");
        estValide = false;
        }


        return estValide;

}