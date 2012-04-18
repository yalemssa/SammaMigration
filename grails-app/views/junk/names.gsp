<html>
	<head>
		<title>names</title>
	</head>
	<body>
		<table>
		<g:each in="${name}" status="i" var="names">
		<tr>
			<td>
				<g:link action="show" id="${names.id}">${names.id?.encodeAsHTML()}</g:link>
			</td>
		</tr>
	</g:each>
	</table>
	</body>
</html>