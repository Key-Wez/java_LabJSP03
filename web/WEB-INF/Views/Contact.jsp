<%-- 
    Document   : Contact
    Created on : Sep 19, 2021, 10:43:22 AM
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

    <body>
        <main>

            <!-- CONTACT -->
            <section id="contact">
                <div class="container">

                    <div class="row">
                        <div id="contact-card" class="col-lg-8 p-5 mx-auto my-5">
                            <h3>Contactez-nous</h3>
                            <p class="lead">N'hesitez pas pour toutes quesitons ou informations... Il nous fera plaisir
                                de
                                répondre</p>

                            <form>
                                <div class="form-group">
                                    <div class="input-group input-group-lg py-1">
                                        <div class="input-group-text"><i class="fa fa-user"></i></div>
                                        <input type="text" class="form-control" placeholder="Votre nom...">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group input-group-lg py-1">
                                        <div class="input-group-text"><i class="fa fa-envelope"></i></div>
                                        <input type="email" class="form-control" placeholder="Votre courriel ici...">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group input-group-lg py-1">
                                        <div class="input-group-text"><i class="fas fa-pencil-alt"></i></div>
                                        <textarea class="form-control" placeholder="Votre message..."
                                            rows="5"></textarea>
                                    </div>
                                </div>

                                <div class="d-grid gap-5 mt-2">
                                    <input type="submit" value="Envoyer" class="btn btn-info  btn-lg">
                                </div>
                            </form>
                        </div>
                    </div>

                </div>

            </section>

        </main>
<jsp:include page="_footer.jsp"/>