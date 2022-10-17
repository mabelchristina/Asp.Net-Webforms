<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayroll.WebForms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="sec2">
    <div>
        <h4>&emsp;&emsp;&emsp; Sign in</h4>
    </div>
    <div>
        <p>&ensp; to continue to Employee Payroll</p>
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Correct Email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-z0-9]+(.[a-z0-9]+)?@[a-z]+[.][a-z]{3}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox1" type="text" placeholder="Email" runat="server" name="email" ToolTip="Please Enter Email"></asp:TextBox>    
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct Password" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox2" placeholder="Password" type="password" name="Password" runat="server" ToolTip="Please Enter Password"></asp:TextBox>
    </div>
    <div>
        <asp:LinkButton ID="LinkButton1" CssClass="lbn" runat="server">Forgot Password?</asp:LinkButton>
    </div>
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Remember me"/>
    </div>
    <br />
    <div>
        <asp:Button ID="Button2" runat="server" class="btn signup" OnClick="Button2_Click" Text="Create Account" />
        &emsp;&nbsp;
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Login" Width="71px" OnClick="Button1_Click" />
    </div>
    <div>
        <asp:Label ID="Label1" class="labelError" ForeColor="Red" runat="server"></asp:Label>
    </div>
    </div> 

</asp:Content>
