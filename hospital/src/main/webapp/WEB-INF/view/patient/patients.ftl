<#import "/spring.ftl" as spring>
<@layout.defaultLayout title="Patients ">
 
<table>
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
  </tr>
  <tr>
    <td>Peter</td>
    <td>Griffin</td>
  </tr>
  <tr>
    <td>Lois</td>
    <td>Griffin</td>
  </tr>
</table>
	
	${patient}
	
</@layout.defaultLayout>