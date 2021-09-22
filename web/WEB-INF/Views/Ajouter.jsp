<%-- 
    Document   : Ajouter
    Created on : Sep 19, 2021, 11:03:43 AM
    Author     : Ken
--%>
<jsp:include page="_header.jsp"/>

    <main>
        <div class="container">
        <%-- DEBUT DE MON CODE DE PAGE --%>
          
            <h1 class="w-75 mx-auto my-4">Ajouter une évaluation</h1>

            <form name="formulaire" action="${ajoutUrl}" method="POST" class="w-75 mx-auto bg-light p-4 shadow"
                onsubmit="return validation()">

                <div class="mb-3 row">
                    <label for="numero" class="col-sm-2 col-form-label">Numéro : </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="numero" id="numero" value="${Liste.nouvelleEntree()}">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="nom" class="col-sm-2 col-form-label">Nom :</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="nom" id="nom">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="prenom" class="col-sm-2 col-form-label">Prénom : </label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="prenom" id="prenom">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="telephone" class="col-sm-2 col-form-label">Téléphone : </label>
                    <div class="col-sm-10">
                        <input type="tel" class="form-control" name="telephone" id="telephone">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="courriel" class="col-sm-2 col-form-label">Courriel : </label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="courriel" id="courriel">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="sexe" class="col-sm-2 col-form-label">Sexe : </label>
                    <div class="col-sm-10 d-flex">
                        <div class="me-4">
                            <input class="form-check-input me-2" type="radio" name="sexe" id="masculin" value="M">
                            <label class="form-check-label" for="sexe">
                                Masculin
                            </label>
                        </div>
                        <div>
                            <input class="form-check-input me-2" type="radio" name="sexe" id="feminin" value="F">
                            <label class="form-check-label" for="sexe">
                                Féminin
                            </label>
                        </div>
                    </div>
                </div>


                <div class="mb-3 row">
                    <div class="d-flex">
                        <label for="note" class="col-sm-2 col-form-label">Note : </label>
                        <select name="note" id="note" class="form-select">
                            <option selected>Selectionner...</option>
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
                        <input type="date" class="form-control" name="date" id="date">
                    </div>
                </div>

                <div class="mb-3 row">
                    <label for="commentaire" class="col-form-label">Commentaire : </label>
                    <div class="">
                        <textarea name="commentaire" id="commentaire" class="w-100" rows="4"></textarea>
                    </div>
                </div>

                <button type="submit" class="btn btn-success  me-3">Envoyer</button>
                <button type="reset" class="btn btn-secondary"
                    onclick="return confirm('Effacer le formulaire?');">Annuler</button>
            </form>

                    
            <%-- FIN DE MON CODE DE PAGE --%>
        </div>
    </main>
<jsp:include page="_footer.jsp"/>

