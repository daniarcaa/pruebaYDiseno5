<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<p><spring:message code="administrator.statistics" /></p>

<security:authorize access="hasRole('ADMIN')">


<display:table name="statistics1" id="computedStatistics1" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	  <display:column property="titleStatistics" titleKey="administrator.statisticBasic" sortable="true">
      		<jstl:out value="${computedStatistics1.key}" />
      </display:column>
      
      <display:column property="valueStatistics" titleKey="administrator.avegareBasic" sortable="true">
      		<jstl:out value="${computedStatistics1.values.get(0)}" />
      </display:column>
      
      <display:column property="valueStatistics" titleKey="administrator.minimumBasic" sortable="true">
      		<jstl:out value="${computedStatistics1.values.get(1)}" />
      </display:column>
      
      <display:column property="valueStatistics" titleKey="administrator.maximumBasic" sortable="true">
      		<jstl:out value="${computedStatistics1.values.get(2)}" />
      </display:column>
      
      <display:column property="valueStatistics" titleKey="administrator.desviationBasic" sortable="true">
      		<jstl:out value="${computedStatistics1.values.get(3)}" />
      </display:column>
</display:table>


<display:table name="statisticsRatios" id="computedStatistics2" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	  <display:column property="titleRatios" titleKey="administrator.statisticRatios" sortable="true">
      		<jstl:out value="${computedStatistics2.key}" />
      </display:column>
      
       <display:column property="valueRatios" titleKey="administrator.scoreValueRatios" sortable="true">
      		<jstl:out value="${computedStatistics2.value}" />
      </display:column>
</display:table>



<display:table name="statisticsTenPercentCust" id="computedStatistics3" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	
	  <display:column property="titleCust" title="<spring:message code="administrator.statisticPercentCust" />" sortable="true">
      		<jstl:forEach var="i" begin="1" end="${computedStatistics3.lenght()}">
      			<jstl:out value="${administrator.customerName i}" />
      		</jstl:forEach>
      </display:column>
      
       <display:column property="valueCust" titleKey="administrator.scoreValuePercentCust" sortable="true">
      		<jstl:out value="${computedStatistics3.value}" />
      </display:column>
</display:table>


<display:table name="statisticsTenPercentHw" id="computedStatistics4" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	
	<display:column property="titleHw" title="<spring:message code="aministrator.statisticPercetHw" />" sortable="true">
      		<jstl:forEach var="i" begin="1" end="${computedStatistics4.lenght()}">
      			<jstl:out value="${administrator.handyWorkerName i}" />
      		</jstl:forEach>
      </display:column>
      
       <display:column property="valueHw" titleKey="administrator.scoreValuePercetHw" sortable="true">
      		<jstl:out value="${computedStatistics4.value}" />
      </display:column>
</display:table>


<display:table name="statisticsBasic2" id="computedStatistics5" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	  <display:column property="titleBasic2" titleKey="aministrator.statisticBasic2" sortable="true">
      		<jstl:out value="${computedStatistics5.key}" />
      </display:column>
      
       <display:column property="valueBasic" titleKey="administrator.scoreValueBasic2" sortable="true">
      		<jstl:out value="${computedStatistics5.value}" />
      </display:column>
</display:table>


<display:table name="statisticsComplaintFixUp" id="computedStatistics6" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	  <display:column property="titleComplaint" titleKey="aministrator.statisticFixUp" sortable="true">
      		<jstl:out value="${computedStatistics6.key}" />
      </display:column>
      
       <display:column property="valueComplaint" titleKey="administrator.scoreValueFixUp" sortable="true">
      		<jstl:out value="${computedStatistics6.value}" />
      </display:column>
</display:table>


<display:table name="statisticsTop3Custo" id="computedStatistics7" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	  <display:column property="titleTopCust" titleKey="aministrator.statisticTop3Custo" sortable="true">
      		<jstl:out value="${computedStatistics7.key}" />
      </display:column>
      
       <display:column property="valueTopCust" titleKey="administrator.scoreValueTop3Custo" sortable="true">
      		<jstl:out value="${computedStatistics7.value}" />
      </display:column>
</display:table>


<display:table name="statisticsTop3Hw" id="computedStatistics8" requestURI="${statistics/administrator/list.do}"
	pagesize="5" class="displaytag">
	  <display:column property="titleTopHw" titleKey="aministrator.statisticTop3Hw" sortable="true">
      		<jstl:out value="${computedStatistics8.key}" />
      </display:column>
      
       <display:column property="valueTopHw" titleKey="administrator.scoreValueTop3Hw" sortable="true">
      		<jstl:out value="${computedStatistics8.value}" />
      </display:column>
</display:table>


</security:authorize>