<%--
 * action-2.jsp
 *
 * Copyright (C) 2018 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<p><spring:message code="handyWorker.endorsment" /></p>

<security:authorize access="hasRole('HANDYWORKER')">

<jstl:set var="loggedActor" value="${loggedActor}" /> 

<display:table name="endorsment" id="endorsmentsList" requestURI="${endorsment/handyworker/list.do}"
	pagesize="5" class="displaytag">
	
 	  <display:column>
 	  	<jstl:if test="${endorsment.writtenBy == loggedActor}"><jstl:out value="disabled='disabled'"/></jstl:if>
 	  	<a href="endorsment/handyworker/edit.do?endorsmentId=${endorsment.id}">
 	  		<spring:message code="endorsment.edit" />
 	  	</a>
 	  </display:column>
      <display:column property="name" title="<spring:message code="endorsment.name" />" sortable="true">
      		<jstl:out value="${endorsmentName}" />
      </display:column>
      <display:column property="moment" titleKey="endorsment.moment" sortable="true">
      		<jstl:out value="${endorsmentsList.moment}" />
      </display:column>
      <display:column property="comments" titleKey="endorsment.comments" >
      		<jstl:out value="${endorsmentsList.comments}" />
      </display:column>
      <display:column property="writtenBy" titleKey="endorsment.writtenBy" >
      		<jstl:out value="${endorsmentsList.writtenBy}" />
      </display:column>
      <display:column property="writtenTo" titleKey="endorsment.writtenTo" >
      		<jstl:out value="${endorsmentsList.writtenTo}" />
      </display:column>
</display:table>

<div>
	<a href="endorsment/handyworker/create.do">
		<spring:message code="endorsment.create" />
	</a>
</div>

</security:authorize>

