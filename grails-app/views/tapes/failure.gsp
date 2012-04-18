<html>
  <head>
    <title>Migration - Failures</title>
    <meta content="main" name="layout">
  </head>
  <body>
    <div style="width: 75%; margin-left: 12.5%">
      <h4>Current failures<br />${now}</h4>
      <table>
        <thead>
          <tr>
            <th>barcode</th>
            <th>filename</th>
            <th>migration date</th>
            <th>migration result</th>
            <th>duration</th>
          </tr>
        </thead>
        <tbody>
          <g:each in="${fail}" status="i" var="tapes">
            <tr>
              <td width="25%">
                <g:link action="show" id="${tapes.id}">${tapes.id?.encodeAsHTML()}</g:link>
              </td>
              <td width="25%">${tapes.tapeId}</td>
              <td width="25%">${tapes.migratedDate}</td>
              <td width="25%">${tapes.migratedResult}</td>
              <td width="25%">${tapes.migratedDuration / 60} </td>
            </tr>
          </g:each>
        </tbody>
      </table>
    </div>
  </body>
</html>