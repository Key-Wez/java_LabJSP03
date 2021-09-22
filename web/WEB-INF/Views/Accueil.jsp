<%-- 
    Document   : Accueil
    Created on : Sep 19, 2021, 10:29:17 AM
    Author     : Ken
--%>

<jsp:include page="_header.jsp"/>

    <main>

        <div class="container">

            <div id="showcase" style="height:80vh;" class="row">

                <div id="showcase-text" class="col-6">

                    <h1 class="text-white">Entrez vos Évaluation ici...</h1>
                    <div id="showcase-content">
                        <a href="${ajoutUrl}" class="btn btn-info btn-lg text-start"><i
                                class="far fa-plus-square pe-3"></i>
                            Ajouter une évaluation</a>
                        <a href="${listeUrl}" class="btn btn-info btn-lg text-start"><i class="fas fa-list pe-3"></i>
                            Voir la
                            liste</a>
                        <a href="${contactUrl}" class="btn btn-info btn-lg text-start"><i class="fas fa-at pe-3"></i>
                            Contactez-nous</a>
                    </div>
                </div>

                <div id="showcase-image" class="col-6 p-5 d-flex align-items-center">
                    <!-- <img src="/LabJSP03/ressource/img/undraw_Add_files_orange.svg" alt=""> -->
                    <img src="<c:url value='/ressource/img/undraw_Add_files_orange.svg'/>" alt="">
                </div>
            </div>

        </div>
    </main>
<jsp:include page="_footer.jsp"/>