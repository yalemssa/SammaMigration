<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main"/>
    <title>Sample title</title>
  </head>
  <body>
    <div style="width: 80%; margin-left: 10%">
    <table>
      <thead>
        <tr>
          <th>HVT</th>
          <th># parts</th>
          <th># complete</th>
        </tr>
      </thead>
      <tbody>
      <g:each in="${incomplete}" var="hvt">
        <tr>
          <td>${hvt.hvt}</td>
          <td>${hvt.parts}</td>
          <td>${hvt.count}</td>
        </tr>
      </g:each>
      </tbody>
    </table>
    </div>
  </body>
</html>
