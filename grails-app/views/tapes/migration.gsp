<html>
	<head>
		<title>Migration - Week Overview</title>
		<meta content="main" name="layout">
	</head>
	<body>
	<p><strong>Week 1: ${d5} - ${d}</strong><br />
	Total number of videos migrated this week: ${n + n2 + n3 + n4 + n5}<br />
	Total number of successful Migrations ${na + n2a + n3a + n4a + n5a}<br />
	Success percentile: ${((na + n2a + n3a + n4a + n5a) * 100) / (n + n2 + n3 + n4 + n5) }</p><hr /><br />

	
	<h3>Friday - ${d} </h3><br />
	<h4>videos migrated: ${n}</h4>
	<h4>total duration: ${duration1}</h4>
	<table width = "75%">
	<tr>
		<td><b>fileTechMD ID</b></td>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		<td><b>duration</b></td>
	</tr>
		<g:each in="${tape}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				<td width="25%">${tapes.migratedDuration % 60} : ${tapes.migratedDuration} : ${tapes.migratedDuration / 60} }</td>
			</tr>
		</g:each>
	</table>
	<br />
	<br />
	
	<h3>Thursday - ${d2} </h3><br />
	<h4>videos migrated: ${n2}</h4>
	<h4>total duration: ${duration2}</h4>
	<table width = "75%">
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		<td><b>duration</b></td>
	</tr>
		<g:each in="${tape2}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				<td width="25%">${Math.round((tapes.migratedDuration / 60)*100)/100}</td>
			</tr>
		</g:each>
	</table>
	<br />
	<br />
	
	<h3>Wednesday - ${d3} </h3><br />
	<h4>videos migrated: ${n3}</h4>
	<h4>total duration: ${duration3}</h4>
	<table width = "75%">
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		<td><b>duration</b></td>
	</tr>
		<g:each in="${tape3}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				<td width="25%">${Math.round((tapes.migratedDuration / 60)*100)/100}</td>
			</tr>
		</g:each>
	</table>
	
	<br />
	<br />
	
	<h3>Tuesday - ${d4} </h3><br />
	<h4>videos migrated: ${n4}</h4>
	<h4>total duration: ${duration4}</h4>
	<table width = "75%">
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		<td><b>duration</b></td>
	</tr>
		<g:each in="${tape4}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				<td width="25%">${Math.round((tapes.migratedDuration / 60)*100)/100}</td>
			</tr>
		</g:each>
	</table>
	
	<br />
	<br />
	
	<h3>Monday - ${d5} </h3><br />
	<h4>videos migrated: ${n5}</h4>
	<h4>total duration: ${duration5}</h4>
	<table width = "75%">
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		<td><b>duration</b></td>
	</tr>
		<g:each in="${tape5}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				<td width="25%">${tapes.migratedDuration}</td>
			</tr>
		</g:each>
	</table>
</body>

</html>