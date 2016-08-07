<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="th" uri="http://tomcat.apache.org/therapy-taglib"%>

<div class="page-header">
	<h3>Treatment</h3>
	<h5>Add treatment for ailment</h5>
</div>

<div class="container-fulid">
	<div class="row">
		<div class="col-sm-12">
			<table class="gridtable" style="width: 100%;">
				<tr>
					<td width="100"><label>Patient Name:</label></td>
					<td>${patient.firstName}&nbsp;${patient.lastName}</td>
					<td width="60"><label>Gender:</label></td>
					<td>${patient.gender}</td>
					<td width="40"><label>Age:</label></td>
					<td>${patient.age}</td>
					<td width="90"><label>Blood Group:</label></td>
					<td>${patient.bloodGroup}</td>
					<td width="120"><label>Existing Ailments:</label></td>
					<td>${patient.existingAilments}</td>
					<td width="60"><label>Allergies:</label></td>
					<td>${patient.allergies}</td>
				</tr>
			</table>

		</div>

		<div class="row">
			<div class="col-sm-12">
				<hr />
			</div>
		</div>


		<div class="row">
			<div class="col-sm-12 pre-scrollable">
				<div class="col-sm-6 pre-scrollable" style="height: 500px;">
					<c:forEach items="${assesments}" var="a">
						<a
							href="<c:url value="/patients/${a.patientId}/treatment?assessmentId=${a.assesmentId}&sittings=list" />">
							<th:assessment assessment="${a}" />
						</a>
					</c:forEach>
				</div>
				<div class="col-sm-6 pre-scrollable">
					<div class="row">
						<div class="col-sm-12">
							<div class="alert-danger">${assessmentNotSelected}</div>
						</div>
						<div class="col-sm-12">

							<form method="POST" class="form-horizontal">

								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label class="col-sm-2 control-label">Sitting:</label>
									<div class="col-sm-7">
										<select id="treatmentId" name="treatmentId"
											class="form-control">
											<option value="">---- select ----</option>
											<c:forEach var="t" items="${treatments}">
												<option value="${t.treatmentId}">${t.name}-
													${t.fees}</option>
											</c:forEach>
										</select>
									</div>
									<input type="submit" value="Add" class="btn btn-success" />
								</div>

							</form>
							<hr />

							<%--  --%>
							<c:forEach var="s" items="${sittings}">
								<table class="table table-condensed">
									<tr>
										<td class="text-left small" style="width:60px;">${s.createdDate}</td>
										<td class="text-left small">${s.treatment}</td>
										<td class="text-right small" style="width:60px;">${s.fees}</td>
									</tr>
								</table>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>


