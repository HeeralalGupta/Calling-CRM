<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="common/head.jsp"%>
</head>
<body>

	<%@ include file="common/header.jsp"%>

	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
		<!-- partial:partials/_sidebar.html -->
		<%@ include file="common/sidebar.jsp"%>
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<!-- Page breadcrumb -->
				<div class="page-header">
					<h3 class="page-title">
						<span class="page-title-icon bg-gradient-primary text-white mr-2">
							<i class="mdi mdi-checkbox-multiple-marked-outline"></i>
						</span> Update Report
					</h3>
					<nav aria-label="breadcrumb">
						<ul class="breadcrumb">
							<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
								<i
								class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
							</li>
						</ul>
					</nav>
				</div>
				<!-- ===================== Page body starts ============================================ -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-description text-primary text-bold">Call
									Disposition</h4>

								<form action="update-rural-report/${urbanData.id}" method="post" class="form-sample">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Call Type<span
													style="color: red;">*</span></label>
												<div class="col-sm-9">
													<select class="form-control" id="connectionType"
														name="connectionType" required>
														<option selected>${urbanData.connectionType}</option>
														<option value="">Select</option>
														<option value="connected">Connected</option>
														<option value="notConnected">Not Connected</option>
													</select>
												</div>
											</div>
										</div>

										<div class="col-md-6" id="connectedDropdown"
											style="display: none;">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Call
													Connected<span style="color: red;">*</span>
												</label>
												<div class="col-sm-9">
													<select class="form-control" name="callConnected">
														<option value="">Select</option>
														<option>Matured call</option>
														<option>No response</option>
														<option>Call drop/Incomplete call</option>
													</select>
												</div>
											</div>
										</div>

										<div class="col-md-6" id="notConnectedDropdown"
											style="display: none;">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Call Not
													Connected<span style="color: red;">*</span>
												</label>
												<div class="col-sm-9">
													<select class="form-control" name="callNotConnected">
														<option value="">Select</option>
														<option>Switched off</option>
														<option>Out of coverage area</option>
														<option>Out of service</option>
														<option>Wrong number</option>
														<option>Other</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<h4 class="card-description text-primary text-bold">Personal
										Information</h4>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Name<span
													style="color: red;">*</span></label>
												<div class="col-sm-9">
													<input type="text" name="name" class="form-control"
														placeholder="Name" value="${urbanData.name}" required />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Mobile Number<span
													style="color: red;">*</span></label>
												<div class="col-sm-9">
													<input type="tel" name="mobile" class="form-control"
														maxlength="10" placeholder="Mobile" value="${urbanData.mobile}" required />
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Alternate
													Mobile</label>
												<div class="col-sm-9">
													<input type="tel" name="alternateMobile"
														class="form-control" maxlength="10" placeholder="Mobile" value="${urbanData.alternateMobile}"
														required />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Email</label>
												<div class="col-sm-9">
													<input type="email" name="email" class="form-control"
														placeholder="Email" value="${urbanData.email}" />
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Profession<span
													style="color: red;">*</span></label>
												<div class="col-sm-9">
													<input type="text" name="profession" class="form-control"
														placeholder="Profession" value="${urbanData.profession}" required />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Gender</label>
												<div class="col-sm-4">
													<div class="form-check">
														<label class="form-check-label"> <input
															type="radio" class="form-check-input" name="gender"
															id="membershipRadios1" value="Male" checked> Male
														</label>
													</div>
												</div>
												<div class="col-sm-5">
													<div class="form-check">
														<label class="form-check-label"> <input
															type="radio" class="form-check-input" name="gender"
															id="membershipRadios2" value="Female"> Female
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Age</label>
												<div class="col-sm-9">
													<input type="number" name="age" class="form-control"
														placeholder="Age" value="${urbanData.age}" />
												</div>
											</div>
										</div>										
									</div>
									<h4 class="card-description text-primary text-bold">Address</h4>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Residential
													Type</label>
												
												<div class="col-sm-5">
													<div class="form-check">
														<label class="form-check-label"> <input
															type="radio" class="form-check-input"
															name="residentialType" id="urbanRadio" value="Urban" checked>
															Urban
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!-- Urban Inputs -->
									<div id="urbanInputs">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group row">
													<label class="col-sm-3 col-form-label">District</label>
													<div class="col-sm-9">
														<select class="form-control" id="urbanDistrictDropdown"
															name="urbanDistrict">
															<option selected>${urbanData.urbanDistrict}</option>
															<option value="">Select District</option>
															<option>Test</option>
															<!-- Dynamic Data will populate -->
														</select>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group row">
													<label class="col-sm-3 col-form-label">Police
														Station</label>
													<div class="col-sm-9">
														<select class="form-control" id="policeStationDropdown"
															name="urbanPoliceStation">
															<option selected>${urbanData.urbanPoliceStation}</option>
															<option value="">Select Police Station</option>
															<!-- Dynamic Data will populate -->
															<option>Test</option>
														</select>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
									            <div class="form-group row">
									                <label class="col-sm-3 col-form-label">Municipality</label>
									                <div class="col-sm-9">
									                    <select class="form-control" id="municipalityDropdown" name="urbanMunicipality">
									                    	<option selected>${urbanData.urbanMunicipality}</option>
									                        <option value="">Select Municipality</option>
									                        <!-- Dynamic Data will populate -->
									                        <option>Test</option>
									                    </select>
									                </div>
									            </div>
									        </div>									    
											
										</div>
									</div>
									
									<!-- Assembly Constituency -->
									<h4 class="card-description text-primary text-bold">Assembly Constituency </h4>
									<div class="row">
											<div class="col-md-6">
									            <div class="form-group row">
									                <label class="col-sm-3 col-form-label">Lok Sabha</label>
									                <div class="col-sm-9">
									                    <select class="form-control" id="municipalityDropdown" name="lokSabha">
									                    	<option selected>${urbanData.lokSabha}</option>
									                        <option value="">Select Lok Sabha</option>
									                        <!-- Dynamic Data will populate -->
									                        <option>Test</option>
									                    </select>
									                </div>
									            </div>
									        </div>
											<div class="col-md-6">
									            <div class="form-group row">
									                <label class="col-sm-3 col-form-label">Vidhan Sabha</label>
									                <div class="col-sm-9">
									                    <select class="form-control" id="municipalityDropdown" name="vidhanSabha">
									                    	<option selected>${urbanData.vidhanSabha}</option>
									                        <option value="">Select Vidhan Sabha</option>
									                        <!-- Dynamic Data will populate -->
									                        <option>Test</option>
									                    </select>
									                </div>
									            </div>
									        </div>
									</div>
									<div class="row">
										<div class="col-md-6">
									            <div class="form-group row">
									                <label class="col-sm-3 col-form-label">Sub Division</label>
									                <div class="col-sm-9">
									                    <select class="form-control" id="municipalityDropdown" name="subDivision">
									                    	<option selected>${urbanData.subDivision}</option>
									                        <option value="">Select Sub Division</option>
									                        <!-- Dynamic Data will populate -->
									                        <option>Test</option>
									                    </select>
									                </div>
									            </div>
									        </div>
										<div class="col-md-6">
									            <div class="form-group row">
									                <label class="col-sm-3 col-form-label">Calling For</label>
									                <div class="col-sm-9">
									                    <select class="form-control" id="callingFor" name="callingFor">
									                     	<option selected>${urbanData.callingFor}</option>
									                        <option>PR</option>
									                        <option>Political Campaign </option>
									                        <option>Election Management </option>
									                        <!-- Dynamic Data will populate -->
									                    </select>
									                </div>
									            </div>
									        </div>
										
									</div>
									
									<div class="row">
										<div class="col-md-6">
												<div class="form-group row">
													<label class="col-sm-3 col-form-label">Ward Number</label>
													<div class="col-sm-9">
														<input type="number" name="ruralWardNumber" placeholder="Ward Number"
															class="form-control" value="${urbanData.ruralWardNumber }" required/>
													</div>
												</div>
											</div>
										<div class="col-md-6">
												<div class="form-group row">
													<label class="col-sm-3 col-form-label">Note :</label>
													<div class="col-sm-9">
														<textarea name="note" class="form-control" placeholder="Note"></textarea>
													</div>
												</div>
											</div>		
									</div>
									<div class="row">
										<div class="col-md-6">
											<button type="submit" class="btn btn-gradient-primary btn-fw"
												cursorshover="true">Update Report</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				
				<!-- ===================== Page body ends ============================================== -->

			</div>
			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.html -->
			<%@ include file="common/footer.jsp"%>
			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	<!-- container-scroller -->
	<!-- plugins:js -->
	<%@ include file="common/scripts.jsp"%>
	<!-- End custom js for this page -->
</body>
</html>