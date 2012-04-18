<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'jquery-ui-1.8.9.custom.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div><img src="${createLinkTo(dir:"images", file:"fort.jpg")}"/></div>
		<br /><strong>Reports</strong>
		<g:link url="[action:'currentWeek',controller:'tapes']">  [ current week ]</g:link>
		<g:link url="[action:'failure',controller:'tapes']"> [ Failure ]</g:link>

	</hr>
	</br>
	<br />
    <g:layoutBody />
    </body>
</html>