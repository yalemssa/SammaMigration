<html>
	<head>
		<title>Cleaner - Week Overview</title>
		<meta content="main" name="layout">
	</head>
	<body>
	
	<p><strong>Week 0: 09/27/2010 - 10/01/2010</strong><br />
	Total number of videos cleaned this week: ${tot}</p><hr /><br />
	<h3>Friday - ${d}</h3>
	<h4>Videos Cleaned: ${a}</h4>
	<table width = "75%">
		<g:each in="${clean}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.cleanedDate}</td>
				<td width="25%">${tapes.cleanedResult}</td>
				<td width="25%">${tapes.qualityFactor}</td>
			</tr>
		</g:each>
	</table>
		
	<br />
	<h3>Thursday - ${d2}</h3>
	<h4>Videos Cleaned: ${b}</h4>
	<table width = "75%">
		<g:each in="${clean2}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.cleanedDate}</td>
				<td width="25%">${tapes.cleanedResult}</td>
				<td width="25%">${tapes.qualityFactor}</td>
			</tr>
		</g:each>
	</table>
	
	<br />
	<h3>Wednesday - ${d3}</h3>
	<h4>Videos Cleaned: ${c}</h4>
	<table width = "75%">
		<g:each in="${clean3}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.cleanedDate}</td>
				<td width="25%">${tapes.cleanedResult}</td>
				<td width="25%">${tapes.qualityFactor}</td>
			</tr>
		</g:each>
	</table>
	
	<br />
	<h3>Tuesday - ${d4}</h3>
	<h4>Videos Cleaned: ${d1}</h4>
	<table width = "75%">
		<g:each in="${clean4}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.cleanedDate}</td>
				<td width="25%">${tapes.cleanedResult}</td>
				<td width="25%">${tapes.qualityFactor}</td>
			</tr>
		</g:each>
	</table>
	
		<br />
	<h3>Monday- ${d5}</h3>
	<h4>Videos Cleaned: ${e}</h4>
	<table width = "75%">
		<g:each in="${clean5}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.cleanedDate}</td>
				<td width="25%">${tapes.cleanedResult}</td>
				<td width="25%">${tapes.qualityFactor}</td>
			</tr>
		</g:each>
	</table>
	</body>
</html>