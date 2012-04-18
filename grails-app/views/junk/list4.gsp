<html>
	<head>
		<title>names</title>
		<meta content="main" name="layout">
	</head>
	<body>
	<h1>${cou } RECORDS</h1>
		<table>
		<g:each in="${tape}" status="i" var="tapes">
		<g:if test="${tapes.migratedDate != null}">
		<tr>
			<td width="25%">
				<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
			</td>
			<td width="25%">${tapes.tapeId}</td>
			<td width="25%">${tapes.migratedDate}</td>
			<td width="25%">${tapes.migratedResult}</td>
		</tr>
		</g:if>
	</g:each>
	</table>
	</body>
</html>