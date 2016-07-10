
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Registration Management System (SRMS)</title>
<style type="text/css">
input[type=text] {
	background-color: #2EFE77;
}

input[type=text]:focus {
	background-color: lightblue;
}
</style>
<script type="text/javascript">
function validateForm(form)
{
    var x = form.lastName.value;
    var y=form.firstName.value;
    var p = form.password.value;
    var pc = form.password1.value;
    var pin=form.pin.value;
    var contactno=form.contactno.value;
    
    if (x.length < 2 && y.length <2) {
       alert("First name and Last name must be filled out");
       return false;
    }
    if (/*/[^a-z\s]/gi.test (x) && *//[^a-z\s]/gi.test (y)) { 
        // only letters space hyphen apostophe allowed - Smith-Jones O'Flanaghan
         alert ("You may only enter letters and space in the first name field");
         return false;
    }
    if(/[^a-z\s]/gi.test (x))
    	{
    	alert ("You may only enter letters and space in the last name field");
        return false;
    	}
    if (contactno.length !=10) {
        alert("Contact Number must be of 10 digits.");
        return false;
     }
    if(!/^\d{10}$/gi.test (contactno))   
    {   
        alert("Contact number must contain only digits.");  
        return false;  
    }  
    if (pin.length !=6)  {
        alert("Pin must be of 6 digits.");
        return false;
     }
       if (p.length < 8 || p.length > 15) {
       alert("Password should be in between 8 to 15 characters");
       return false;
    }
       
    if(p.match(/^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])([a-zA-Z0-9]{8})$/))   
    {   
        alert("Password should contain at least one lowercase, one uppercase and one digit.");  
        return false;  
   }  
    if(p!=pc)
    	{
    	alert("Passwords do not match");  
        return false;
    	}
  
    return true; 
}
</script>

</head>

<body>
	<h2>Whoa!!!!! our change has been picked up automatically ....
		DevOps rocks</h2>
	<form action="RegistrationAction" name="registrationForm"
		onsubmit="return validateForm(this)" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td colspan="2" align="center">
					<h3>
						<b style="">Registration Form </b>
					</h3>
				</td>
			</tr>

			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstName" required="required"
					size="45" /></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lastName" required="required"
					size="45" /></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="Male" />Male <input
					type="radio" name="gender" value="Female" />Female <input
					type="radio" name="gender" value="Others" />Others</td>
			</tr>
			<tr>
				<td>Date of Birth:</td>
				<td><input type="text" name="dob" /></td>
			</tr>
			<tr>
				<td>Contact No.:</td>
				<td><input type="text" name="contactno" required="required" /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><textarea rows="4" cols="40" name="address"></textarea></td>
			</tr>


			<tr>
				<td>Country:</td>
				<td><select name="country" onClick="getCountries()"
					class="countries" id="countryId">
						<option value="">Select Country</option>
				</select></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><select name="state">
						<option value="">Select State</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Odisha">Odisha</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Telangana">Telangana</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="West Bengal">West Bengal</option>
						<option value="Delhi(UT)">Delhi(UT)</option>
						<option value="Puducherry(UT)">Puducherry(UT)</option>
						<option value="32">Andaman and Nicobar Islands(UT)</option>
						<option value="Andaman and Nicobar Islands(UT)">Chandigarh(UT)
						</option>
						<option value="Dadra and Nagar Haveli(UT)">Dadra and
							Nagar Haveli(UT)</option>
						<option value="Daman and Diu(UT">Daman and Diu(UT)</option>
						<option value="Lakshadweep(UT)">Lakshadweep(UT)</option>
				</select></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><input type="text" name="city"></td>
			</tr>

			<tr>
				<td>Pincode:</td>
				<td><input type="text" name="pin" />
			</tr>
			<tr>
				<td>Email id:</td>
				<td><input value="email" name="email" required="required"
					size="45" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" required="required"
					size="10" /></td>
			</tr>
			<tr>
				<td>Re-Enter Password:</td>
				<td><input type="password" name="password1" required="required"
					size="10" /></td>
			</tr>

			<tr>
			<tr></tr>
			<tr></tr>
			<tr>
			<tr></tr>
			<tr></tr>
			<tr>
			<tr></tr>
			<tr>
				<td><input type="submit" name="btnSignUp" value="Sign Up" /></td>
				<td><input type="reset" name="btnReset" value="Reset" /></td>
			</tr>
			<tr>
			<tr></tr>
			<tr></tr>
			<tr>
			<tr></tr>
			<tr></tr>
			<tr>
			<tr></tr>
			<%
				if (request.getParameter("dbStatus") != null) {
					out.println(request.getAttribute("dbStatus"));
				}
			%>
		</table>
	</form>
</body>
</html>
