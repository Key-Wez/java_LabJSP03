<%-- 
    Document   : Liste
    Created on : Sep 19, 2021, 11:17:15 AM
    Author     : Ken
--%>
   
<jsp:include page="_header.jsp"/>

    <main>

        <div class="container">

            <h1 class="my-4">Liste des évaluation</h1>

            <c:if test="${ListeEvaluations.size()==0}">
                <div class="alert alert-warning" role="alert">
                    Aucune évaluation à afficher à l'instant.
                </div>
            </c:if>

            <c:if test="${ListeEvaluations.size() gt 0}">

                <table class="table table-striped bg-light">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nom</th>
                            <th scope="col">Prénom</th>
                            <th scope="col">Téléphone</th>
                            <th scope="col">Courriel</th>
                            <th scope="col">Sexe</th>
                            <th scope="col">Note</th>
                            <th scope="col">Date</th>

                            <th scope="col">Modifier</th>
                            <th scope="col">Supprimer</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ev" items="${ListeEvaluations}">
                            <tr>
                                <th scope="row">${ev.numero}</th>
                                <td>${ev.nom}</td>
                                <td>${ev.prenom}</td>
                                <td>${ev.telephone}</td>
                                <td>${ev.courriel}</td>
                                <td>${ev.sexe}</td>
                                <td>${ev.note}</td>
                                <td><f:formatDate pattern = "yyyy-MM-dd" value = "${ev.dateevaluation}" /></td>
                                <td><a href="${modifierUrl}/${ev.numero}" class="btn btn-primary">Modifier</a></td>
                                <td><a href="${supprimerUrl}/${ev.numero}" class="btn btn-danger"
                                        onclick="return confirm('Souhaitez-vous bien procéder à la suppression?');">Supprimer</a>
                                </td>
                            </tr>
                        </c:forEach>
            </c:if>

            </tbody>
            </table>

            <a href="${ajoutUrl}" class="btn btn-success btn-lg text-start">Ajouter</a>
        </div>
    </main>

<jsp:include page="_footer.jsp"/>