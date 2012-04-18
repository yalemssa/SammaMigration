<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css/sunny',file:'jquery-ui-1.8.16.custom.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div style="width: 75%; margin-left: 12.5%; margin-top: 10px">
          <div style="background-color: #fff; border-color: #8e846b; border-style: solid; border-width: 1px;
               -moz-border-radius: 8px; border-radius: 8px;">
          <table >
            <tbody>
              <tr>
                <td><img src="${createLinkTo(dir:"images", file:"fort.jpg")}"/></td>
                <td><strong>Reports</strong>
		<g:link url="[action:'currentWeek',controller:'tapes']">  [ current week ]</g:link>
		<g:link url="[action:'failure',controller:'tapes']"> [ Failure ]</g:link>
                
                </td>
              </tr>
            </tbody>
          </table>
        <g:if test="${params.date != null}">
        <table>
          <tr>
            <td>
              <g:def var="nextWeek" value="${nextSpanEnd}"/></br>
              <g:def var="prevWeek" value="${previousSpanEnd}"/>
            </td>
            <td>
              <g:link action="week" params="[date: prevWeek]"><-- previous week</g:link><br/>
              ${previousSpanBegin} - ${previousSpanEnd}
            </td>
            <td align="center">current week<br/>${spanBegin} - ${spanEnd}</td>
            <td>
              <g:link action="week" params="[date: nextWeek]">next week --></g:link>
              <br/>${nextSpanBegin} - ${nextSpanEnd}
            </td>
          </tr>
        </table>
        </g:if>
        </div>
    <g:layoutBody />
    </body>
</html>