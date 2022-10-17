<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="EmployeePayroll.WebForms.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Signup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="sec4">
    <div>
        <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create an account</h5>
    </div>
    <div>
        <p>&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to continue to Employee Payroll</p>
    </div>
    <div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct First name" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
        &emsp;&emsp;&emsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter correct Last name" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox2" type="text" placeholder="First name" name="firstname" runat="server" required="required" ToolTip="Please Enter First Name"></asp:TextBox>
        <asp:TextBox ID="TextBox3" type="text" placeholder="Last name" name="lastname" runat="server" required="required" ToolTip="Please Enter Last Name"></asp:TextBox>
    </div>
    <div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter correct Email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-z0-9]+(.[a-z0-9]+)?@[a-z]+[.][a-z]{3}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox1" placeholder="Enter Email" type="text" name="username" runat="server" Width="438px" required="required" ToolTip="Please Enter Email"></asp:TextBox>
    </div>
    <div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter correct Mobile Number" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox6" placeholder="Enter Mobile Number" type="text" name="Phone" runat="server" Width="438px" required="required" ToolTip="Please Enter Mobile Number"></asp:TextBox>
    </div>
    <div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Strong Password" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
        &emsp;&emsp;&emsp;&ensp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Strong Password" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox4" type="password" placeholder="Enter Password" name="Password" runat="server" required="required" ToolTip="Please Enter Strong Password"></asp:TextBox>
        <asp:TextBox ID="TextBox5" type="password" placeholder="Confirm Password" name="Password" runat="server" required="required" ToolTip="Please Re-type The Password To Confirm"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords should be Same" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ForeColor="Red"></asp:CompareValidator>
    </div>
    <div>
        <asp:CheckBox ID="CheckBox2" OnCheckedChanged="CheckBox2_CheckedChanged" type="checkbox" Text="Show Password" runat="server" AutoPostBack="True" />
    </div>
    <br />
    <div>
        <asp:LinkButton ID="LinkButton1" CssClass="lbtn" style="text-decoration:none" OnClick="LinkButton1_Click" runat="server" EnableTheming="True">Sign in instead</asp:LinkButton>
        &emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Sign Up" OnClick="Button1_Click" />
    </div>
    <div>
        &ensp;<asp:Label ID="Label1" class="labelError" ForeColor="Red" runat="server"></asp:Label>
    </div>
    </div>
</asp:Content>
