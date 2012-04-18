<html>
  <head>
    <title>Current Day</title>
    <meta content="main" name="layout">
  </head>
  <body>
    <g:javascript library="jquery-1.6.2.min"/>
    <g:javascript library="jquery-ui-1.8.16.custom.min"/>
    <g:javascript>$(function() {$( "#tabs" ).tabs();});</g:javascript> 
    
      <br />
      <div style="padding: 10px; background-color: #feeebd; border-color: #8e846b; border-style: solid; border-width: 1px;
           -moz-border-radius: 8px; border-radius: 8px;">
        <h3>Global Stats:</h3>

        <p>Today is: ${today}</p>
    <g:def var="nextWeek" value="${nextSpanEnd}"/>
    <g:def var="prevWeek" value="${previousSpanEnd}"/>
        <ul>
          <li>complete testimonies: <b>${completeCount}</b>
          <li>incomplete testimonies: <b>${incomplete}</b> <g:link action="incomplete">[VIEW]</g:link>
          <li>testimony parts digitized: <b>${success} (${totalHours} hours)</b>
        </ul>
      </div>
      <br />
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
        <div class="demo">
          <div id="tabs">
            <ul>
		<li><a href="#monday">Monday</a></li>
		<li><a href="#tuesday">Tuesday</a></li>
		<li><a href="#wednesday">Wednesday</a></li>
                <li><a href="#thursday">Thursday</a></li>
                <li><a href="#friday">Friday</a></li>
            </ul>
            <div id="friday">
              <h3>
               Thursday - ${fridayDate} 
                  <div style="color:#000"> successful migrations: ${fridayMigrationSuccessCount}</div>
              
              </h3>
              <div>
                <p>videos migrated: ${fridayMigrationCount}</p>
                <p>videos successfully migrated: ${fridayMigrationSuccessCount}</p>
                <table width = "75%">
                  <thead>
                    <tr>
                      <th>barcode</b></th>
                      <th>filename</th>
                      <th>migration date</th>
                      <th>migration result</th>
                    </tr>
                  </thead>
                  <tbody>
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
                  </tbody>
                </table>
              </div>
            </div>
            <div id="thursday">
              <h3>
                Thursday - ${thursdayDate} 
                  <div style="color:#000">successful migrations: ${thursdayMigrationSuccessCount}</div>
               
              </h3>
              <div>
                <table width = "75%">
                  <thead>
                    <tr>
                      <th>barcode</b></th>
                      <th>filename</th>
                      <th>migration date</th>
                      <th>migration result</th>
                    </tr>
                  </thead>
                  <tbody>
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
                  </tbody>
                </table>
              </div>
            </div>
            <div id="wednesday">
              <h3>
                Wednesday - ${wednesdayDate} 
                  <div style="color:#000">successful migrations: ${wednesdayMigrationSuccessCount}</div>
              
              </h3>
              <div>
                <table>
                  <thead>
                    <tr>
                      <th>barcode</b></th>
                      <th>filename</th>
                      <th>migration date</th>
                      <th>migration result</th>
                    </tr>
                  </thead>
                  <tbody>
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
                </tbody>
              </table>
            </div>
            </div>
            <div id="tuesday">
              <h3>Tuesday - ${tuesdayDate} 
                  <div style="color:#000">successful migrations: ${tuesdayMigrationSuccessCount}</div>
               
              </h3>
              <div>
                <table
                  <thead>
                    <tr>
                      <th>barcode</b></th>
                      <th>filename</th>
                      <th>migration date</th>
                      <th>migration result</th>
                    </tr>
                  </thead>
                  <tbody>
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
                </tbody>
              </table>
            </div>
            </div>
            <div id="monday">
            <h3>Monday - ${mondayDate} 
                  <div style="color:#000">successful migrations: ${mondayMigrationSuccessCount}</div>
              </h3>
            <div>
              <table>
                <thead
                  <tr>
                    <th>barcode</th>
                    <th>filename</th>
                    <th>migration date</th>
                    <th>migration result</th>
                  </tr>
                </thead>
                <tbody>
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
                </tbody>
              </table>
            </div>
            </div>
        </div>
        </div>
  </body>
</html>