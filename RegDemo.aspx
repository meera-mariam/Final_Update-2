<%@ Page Language="C#"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="RegDemo.aspx.cs" Inherits="Welgate_Organic_Projects.RegDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<body>
<div class="row">
    <div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Enter Your Details Here
			</div>
			<div class="panel-body">
				<form name="myform">
					<div class="form-group">
						<label for="myName">EMP_ID *</label>
						<asp:Label ID="lblempid" CssClass="form-control" runat="server"></asp:Label>
						<span id="error_name" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="lastname">EMPLOYEE NAME *</label>
                      <asp:TextBox ID="txtempname" CssClass="form-control" runat="server"></asp:TextBox>
						<span id="error_lastname" class="text-danger"></span>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Name" ControlToValidate="txtempname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
					</div>
					<div class="form-group">
						<label for="age">ADDRESS & CONTACT *</label>
                           <asp:TextBox ID="txtcontact" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
						
						<span id="error_age" class="text-danger"></span>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Address" ControlToValidate="txtcontact" ForeColor="#CC0000"></asp:RequiredFieldValidator>

					</div>
					<div class="form-group">
						<label for="dob">DATE OF BIRTH *</label>
						   <asp:TextBox ID="txtdob" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
						<span id="error_dob" class="text-danger"></span>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*DOB" ControlToValidate="txtdob" ForeColor="#CC0000"></asp:RequiredFieldValidator>

					</div>
					<div class="form-group">
						<label for="gender">GENDER</label>
						<asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>--MALE--</asp:ListItem>
                            <asp:ListItem>--FEMALE--</asp:ListItem>

						</asp:RadioButtonList>
						<span id="error_gender" class="text-danger"></span>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Gender" ControlToValidate="RadioButtonList1" ForeColor="#CC0000"></asp:RequiredFieldValidator>

					</div>

                    <div class="form-group">
						<label for="lastname">EMAIL_ID *</label>
                      <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
						<span id="error_email" class="text-danger"></span>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*EmailId" ControlToValidate="txtemail" ForeColor="#CC0000"></asp:RequiredFieldValidator>

					</div>
					<div class="form-group">
						<label for="phone">USERNAME *</label>
                           <asp:TextBox ID="txtuser_id" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
						<span id="error_phn" class="text-danger"></span>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Username" ControlToValidate="txtuser_id" ForeColor="#CC0000"></asp:RequiredFieldValidator>

					</div>
                    	<div class="form-group">
						<label for="phone">PASSWORD *</label>
                           <asp:TextBox ID="txtpswd" CssClass="form-control" runat="server" ></asp:TextBox>
						<span id="error_phone" class="text-danger"></span>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Password" ControlToValidate="txtpswd" ForeColor="#CC0000"></asp:RequiredFieldValidator>

					</div>
					<div class="form-group">
						<label for="disc">DESIGNATION</label>
                           <asp:TextBox ID="txtdesignation" CssClass="form-control" runat="server" ></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Designation" ControlToValidate="txtdesignation" ForeColor="#CC0000"></asp:RequiredFieldValidator>

					</div>
					
					<asp:Button ID="BTNREG" CssClass="form-control" runat="server" Text="REGISTER" BackColor="#FF6666" BorderColor="#FFFFCC" BorderStyle="Double" Font-Bold="True" OnClick="BTNREG_Click" />
			
				</form>

			</div>
		</div>
	</div>
</div>
</body>
    </div>
    </form>
</body>
</html>
