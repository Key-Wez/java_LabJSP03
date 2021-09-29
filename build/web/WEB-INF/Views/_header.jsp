<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%--  LIENS URL --%>
<c:url var="accueilUrl" value="/Accueil/accueil"></c:url>
<c:url var="ajoutUrl" value="/Evaluation/ajouter"></c:url>
<c:url var="listeUrl" value="/Evaluation/liste"></c:url>
<c:url var="contactUrl" value="/Accueil/contact"></c:url>
<c:url var="modifierUrl" value="/Evaluation/modifier"></c:url>
    
<c:url var="styleCss" value="/ressource/css/style.css"></c:url>
    
<!DOCTYPE html>
<html>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- Font-awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
  <link rel="stylesheet" href="${styleCss}">
<%-- <title>Laboratoire 03 | Ken Lagace</title> --%>
<c:choose>
<c:when test="${page=='accueil'}"><title>Laboratoire 03 | ACCUEIL</title></c:when>
<c:when test="${page=='ajouter'}"><title>Laboratoire 03 | AJOUTER</title></c:when>
<c:when test="${page=='liste'}"><title>Laboratoire 03 | LISTE</title></c:when>
<c:when test="${page=='contact'}"><title>Laboratoire 03 | CONTACT</title></c:when>
<c:otherwise><title>Laboratoire 03 | Ken Lagace</title></c:otherwise>
</c:choose>


<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <a class="navbar-brand" href="${accueilUrl}">KLagace</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link ${page == 'accueil'? 'active': ''}" href="${accueilUrl}">Accueil</a>
            </li>
            <li class="nav-item">
              <a class="nav-link ${page == 'ajouter'? 'active': ''}" href="${ajoutUrl}">Ajouter évaluation</a>
            </li>
            <li class="nav-item">
              <a class="nav-link ${page == 'liste'? 'active': ''}" href="${listeUrl}">Liste évaluation</a>
            </li>
            <li class="nav-item">
              <a class="nav-link ${page == 'contact'? 'active': ''}" href="${contactUrl}">Nous contacter</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </header>
            
