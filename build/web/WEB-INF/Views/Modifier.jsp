<%-- 
    Document   : Modifier
    Created on : Sep 19, 2021, 11:46:16 AM
    Author     : Ken
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--  LIENS URL --%>
<c:url var="accueilUrl" value="/Accueil/accueil"></c:url>
<c:url var="ajoutUrl" value="/Evaluation/ajouter"></c:url>
<c:url var="listeUrl" value="/Evaluation/liste"></c:url>
<c:url var="contactUrl" value="/Accueil/contact"></c:url>
<c:url var="modifierUrl" value="/Evaluation/modifier"></c:url>
    
<c:url var="styleCss" value="/ressource/css/style.css"></c:url>

<jsp:include page="_header.jsp"/>
  
            <main>

        <div class="container">

            <h1 class="w-75 mx-auto my-4">Modifier une évaluation</h1>

      
            <form name="formulaire" action="${modifierUrl}" method="POST" class="w-75 mx-auto bg-light p-4 shadow" onsubmit="return validation()">

                <div class ="mb-3 row">
                    <label for="numero" class="col-sm-2 col-form-label">Numéro : </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control-plaintext" name="numero" id="numero" readonly value="${Evaluation.numero}">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="nom" class="col-sm-2 col-form-label">Nom :</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="nom" id="nom" value="${Evaluation.nom}">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="prenom" class="col-sm-2 col-form-label">Prénom : </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="prenom" id="prenom" value="${Evaluation.prenom}">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="telephone" class="col-sm-2 col-form-label">Téléphone : </label>
                    <div class="col-sm-10">
                        <input type="tel" class="form-control" name="telephone" id="telephone" value="${Evaluation.telephone}">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="courriel" class="col-sm-2 col-form-label">Courriel : </label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="courriel" id="courriel" value="${Evaluation.courriel}">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="courriel" class="col-sm-2 col-form-label">Sexe : </label>
                    <div class="col-sm-10 d-flex">
  
                        <c:if test="${Evaluation.sexe.toString()=='M'}">
                        <div class="me-4">
                            <input class="form-check-input me-2" type="radio" name="sexe" id="masculin" value="M" checked>
                            <label class="form-check-label" for="M">
                                Masculin
                            </label>
                        </div>

                        <div>
                            <input class="form-check-input me-2" type="radio" name="sexe" id="feminin" value="F" >
                            <label class="form-check-label" for="F">
                                Féminin
                            </label>
                        </div>
                        </c:if>
                        
                        <c:if test="${Evaluation.sexe.toString()=='F'}">
                        <div class="me-4">
                            <input class="form-check-input me-2" type="radio" name="sexe" id="masculin" value="M">
                            <label class="form-check-label" for="M">
                                Masculin
                            </label>
                        </div>

                        <div>
                            <input class="form-check-input me-2" type="radio" name="sexe" id="feminin" value="F" checked>
                            <label class="form-check-label" for="F">
                                Féminin
                            </label>
                        </div>
                        </c:if>

                    </div>
                </div>


                <div class="mb-3 row">
                    <div class="d-flex">
                        <label for="note" class="col-sm-2 col-form-label">Note : </label>
                        <select name="note" class="form-select" aria-label="Default select example" value="${Evaluation.note}">
                            <option selected>${Evaluation.note}</option>
                            <option value="Très bien">Très bien</option>
                            <option value="Bien">Bien</option>
                            <option value="Moyen">Moyen</option>
                            <option value="Médiocre">Médiocre</option>
                        </select>
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="date" class="col-sm-2 col-form-label">Date : </label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" name="date" id="date" value='<f:formatDate pattern = "yyyy-MM-dd" value = "${Evaluation.dateevaluation}"/>'>
                    </div>
                </div>
                    
                <div class="mb-3 row">
                    <label for="commentaire" class="col-form-label">Commentaire : </label>
                    <div class="">
                        <textarea name="commentaire" id="commentaire" class="w-100" rows="4">${Evaluation.commentaire}</textarea>
                    </div>
                </div>
                    
                <button type="submit" class="btn btn-success">Modifier</button>
                <%-- <a class="btn btn-secondary" href="ListeServlet">Annuler</a> --%>
                <button type="reset" class="btn btn-secondary" onclick="return confirm('Effacer les modifications?');">Annuler</button>

            </form>
        </div>


    </main>
<jsp:include page="_footer.jsp"/>
