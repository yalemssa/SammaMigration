<html>
  <head>
    <title>Week of ${spanBegin} - ${spanEnd}</title>
    <meta content="main" name="layout">
  </head>
  <body>
    <div style="width: 75%; margin-left: 12.5%">
    <p>Today is: ${today}</p>
    <g:def var="nextWeek" value="${nextSpanEnd}"/>
    <g:def var="prevWeek" value="${previousSpanEnd}"/>
    <table>
      <tr>  


        <td>
          <g:link action="week" params="[date: prevWeek]">
                  <-- previous week	
          </g:link>
          <br/>${previousSpanBegin} - ${previousSpanEnd}
        </td>

        <td align="center">viewing week<br/>${spanBegin} - ${spanEnd}</td>

        <td>
          <g:link action="week" params="[date: nextWeek]">next week --></g:link>
          <br/>${nextSpanBegin} - ${nextSpanEnd}
        </td>
      </tr>
  </table>

    <br />
    <p><b>Friday - ${fridayDate}</b></p>
    <p>videos migrated: ${fridayMigrationCount}</p>
    <p>videos successfully migrated: ${friMigrationSuccessCount}</p>
    <table width = "75%">
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		
	</tr>
		<g:each in="${fridayMigration}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				
			</tr>
		</g:each>
	</table>
	
	<br />
	<p><b>Thursday - ${thursdayDate}</b></p>
	<p>videos migrated: ${thursdayMigrationCount}</p>
	<p>videos successfully migrated: ${thursdayMigrationSuccessCount}</p>
	<table>
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		
	</tr>
		<g:each in="${thursdayMigration}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				
			</tr>
		</g:each>
	</table>
	
	<br />
	<p><b>Wednesday - ${wednesdayDate}</b></p>
	<p>videos migrated: ${wednesdayMigrationCount}</p>
	<p>videos successfully migrated: ${wednesdayMigrationSuccessCount}</p>
	
	<table width = "75%">
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		
	</tr>
		<g:each in="${wednesdayMigration}" status="i" var="tapes">
			<tr>
				<td width="25%">
					<g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				
			</tr>
		</g:each>
	</table>
	
	<br />
	<p><b>Tuesday - ${tuesdayDate}</b></p>
	<p>videos migrated: ${tuesdayMigrationCount}</p>
	<p>videos successfully migrated: ${tuesdayMigrationSuccessCount}</p>
	<table width = "75%">
	<tr>
		<td><b>barcode</b></td>
		<td><b>filename</b></td>
		<td><b>migration date</b></td>
		<td><b>migration result</b></td>
		
	</tr>
		<g:each in="${tuesdayMigration}" status="i" var="tapes">
			<tr>
				<td width="25%">
                                  <g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
				</td>
				<td width="25%">${tapes.tapeId}</td>
				<td width="25%">${tapes.migratedDate}</td>
				<td width="25%">${tapes.migratedResult}</td>
				
			</tr>
		</g:each>
	</table>
          <br />
          <p><b>Monday - ${mondayDate}</b></p>
          <p>videos migrated: ${mondayMigrationCount}</p>
          <p>videos successfully migrated: ${mondayMigrationSuccessCount}</p>
        <table width = "75%">
          <tr>
            <td><b>barcode</b></td>
            <td><b>filename</b></td>
            <td><b>migration date</b></td>
            <td><b>migration result</b></td>
          </tr>
          <g:each in="${mondayMigration}" status="i" var="tapes">
            <tr>
            <td width="25%">
              <g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
            </td>
            <td width="25%">${tapes.tapeId}</td>
            <td width="25%">${tapes.migratedDate}</td>
            <td width="25%">${tapes.migratedResult}</td>
          </tr>
        </g:each>
      </table>
    </div>
  </body>
</html>