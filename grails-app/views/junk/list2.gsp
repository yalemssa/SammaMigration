<html>
	<head>
	<title>Search Tape Database</title>
	<meta content="main" name="layout">
	</head>
	<body>
	<table>
	<g:each in="${tapesList}" status="i" var="tapes">
		<tr>
			<td>
				<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
			</td>
			<td>${tapes.tapeId}</td>	
		</tr>
	</g:each>
	</table>
	</body>
</html>