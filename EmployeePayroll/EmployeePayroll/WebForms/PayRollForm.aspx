<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="PayRollForm.aspx.cs" Inherits="EmployeePayroll.WebForms.PayRollForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/PayrollForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="sec2">
        <form method="post">
            <div cass="sec1">
                <h3>Employee Payroll Form</h3>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
                <asp:TextBox ID="TextBox1" type="text" name="Name" required="required" runat="server" Width="490px" ToolTip="Please Enter Name" ></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Profile Image"></asp:Label>
                &ensp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" required="required" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl" ToolTip="Please Select Profile Image">
                    <asp:ListItem Value="../Asset/Images/Ellipse -1.png"> <img src="../Asset/Images/Ellipse -1.png" alt="img1"/> </asp:ListItem>
                    <asp:ListItem Value="../Asset/Images/Ellipse -2.png"> <img src="../Asset/Images/Ellipse -2.png" alt="img2"/></asp:ListItem>
                    <asp:ListItem Value="../Asset/Images/Ellipse -3.png"> <img src="../Asset/Images/Ellipse -3.png" alt="img3"/></asp:ListItem>
                    <asp:ListItem Value="../Asset/Images/Ellipse -4.png"> <img src="../Asset/Images/Ellipse -4.png" alt="img4"/></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            
            <br /><br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                &emsp;&emsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList2" required="required" runat="server" RepeatDirection="Horizontal" CellPadding="1" CellSpacing="1" RepeatLayout="Flow" CssClass="rbm" ToolTip="Please Select Your Gender">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
                &emsp;
                <asp:CheckBoxList ID="CheckBoxList1" required="required" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbn" ToolTip="Please Select Your Working Departments">
                    <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                    <asp:ListItem Text="Sales" Value="Sales"></asp:ListItem>
                    <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                    <asp:ListItem Text="Engineer" Value="Engineer"></asp:ListItem>
                    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" required="required" runat="server" Width="250px" Height="36px" ToolTip="Please Select Your Current Salary" >
                <asp:ListItem>Select Salary</asp:ListItem>
                <asp:ListItem Text="₹ 10,000" Value="10000"></asp:ListItem>
                <asp:ListItem Text="₹ 12,000" Value="12000"></asp:ListItem>
                <asp:ListItem Text="₹ 15,000" Value="15000"></asp:ListItem>
                <asp:ListItem Text="₹ 18,000" Value="18000"></asp:ListItem>
                <asp:ListItem Text="₹ 20,000" Value="20000"></asp:ListItem>
                <asp:ListItem Text="₹ 22,000" Value="22000"></asp:ListItem>
                <asp:ListItem Text="₹ 25,000" Value="25000"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Text="Start Date"></asp:Label>
            &emsp;&emsp;&emsp;&ensp;
            <asp:DropDownList ID="ddlDay" required="required" runat="server" Height="36px" Width="90px" >
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMonth" required="required" runat="server" Height="36px" Width="90px"  AutoPostBack="true" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged1">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlYear" required="required" runat="server" Height="36px" Width="90px"  AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged1">              
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" runat="server" Text="Notes"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:TextBox ID="TextBox2" type="text" required="required" name="notes" runat="server" TextMode="MultiLine" Width="490px" Height="70px" ToolTip="Please Tell About Yourself" ></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" class="btn button" Text="Cancel" Width="120px" />
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:Button ID="Button2" runat="server" class="btn submit" Text="Submit" Width="120px" OnClick="Button2_Click" />
            &ensp;
            <asp:Button ID="Button3" runat="server" class="btn button" Text="Reset" Width="120px" />
        </div>
        <div>
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </div>
        </form>
        </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
