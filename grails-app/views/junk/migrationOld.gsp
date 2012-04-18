<html>
	<head>
		<title>names</title>
		<meta content="main" name="layout">
	</head>
	<body>
		<br />
		<h2>${d} -  migrations }</h2>
		<table width = "75%">
		<g:each in="${tape}" status="i" var="tapes">
		<g:if test="${tapes.migratedDate > d}">
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
	<br />
	<h2>${e}</h2>
	<table "75%">
		<g:each in="${tape}" status="i" var="tapes">
		<g:if test="${tapes.migratedDate > e && tapes.migratedDate < d}">
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
	
		<br />
	<h2>${f}</h2>
	<table "75%">
		<g:each in="${tape}" status="i" var="tapes">
		<g:if test="${tapes.migratedDate > f && tapes.migratedDate < e}">
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