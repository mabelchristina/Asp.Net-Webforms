<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayroll.WebForms.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heading">
        <p>Employee Details</p>
        <asp:Button ID="Button1" class="btn addUser" runat="server" OnClick="Button1_Click" Text="+Add User" />
    </div>
    <br />
     <div class="table1">
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" Width="1155px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>

    <div class="table2">
        <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" AutoGenerateColumns="False" Width="1155px" DataSourceID="SqlDataSource1" AllowPaging="True" OnRowDeleting="GridView3_RowDeleting" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="#FFFFFF" />
            <Columns>
                <asp:TemplateField HeaderText="IMG" SortExpression="IMG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IMG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("IMG") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                <asp:BoundField DataField="DEPARTMENT" HeaderText="DEPARTMENT" SortExpression="DEPARTMENT" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/Assets/images/cancel.png" DeleteImageUrl="../Asset/Images/delete-black-18dp.svg" EditImageUrl="../Asset/Images/update-black-18dp.svg" HeaderText="ACTIONS" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Assets/icons/create-black-18dp.svg" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#42515F" Font-Bold="True" ForeColor="White" Height="62px" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFFFF" ForeColor="Black" Height="58px" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormsConnectionString %>" SelectCommand="SELECT [IMG], [NAME], [GENDER], [DEPARTMENT], [SALARY], [START_DATE], [ID], [NOTES] FROM [PayformDetails]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [PayformDetails] WHERE [ID] = @original_ID AND [IMG] = @original_IMG AND [NAME] = @original_NAME AND [GENDER] = @original_GENDER AND [DEPARTMENT] = @original_DEPARTMENT AND [SALARY] = @original_SALARY AND [START_DATE] = @original_START_DATE AND [NOTES] = @Original_NOTES"  InsertCommand="INSERT INTO [PayformDetails] ([IMG], [NAME], [GENDER], [DEPARTMENT], [SALARY], [START_DATE], [Notes]) VALUES (@IMG, @NAME, @GENDER, @DEPARTMENT, @SALARY, @START_DATE, @NOTES)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [PayformDetails] SET [IMG] = @IMG, [NAME] = @NAME, [GENDER] = @GENDER, [DEPARTMENT] = @DEPARTMENT, [SALARY] = @SALARY, [START_DATE] = @START_DATE, [NOTES] = @NOTES WHERE [ID] = @original_ID AND [IMG] = @original_IMG AND [NAME] = @original_NAME AND [GENDER] = @original_GENDER AND [DEPARTMENT] = @original_DEPARTMENT AND [SALARY] = @original_SALARY AND [START_DATE] = @original_START_DATE AND [NOTES] = @Original_NOTES" >
             <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_IMG" Type="String" />
                    <asp:Parameter Name="original_NAME" Type="String" />
                    <asp:Parameter Name="original_GENDER" Type="String" />
                    <asp:Parameter Name="original_DEPARTMENT" Type="String" />
                    <asp:Parameter Name="original_SALARY" Type="String" />
                    <asp:Parameter Name="original_START_DATE" Type="String" />
                  <asp:Parameter Name="original_NOTES" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IMG" Type="String" />
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="DEPARTMENT" Type="String" />
                    <asp:Parameter Name="SALARY" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="String" />
                     <asp:Parameter Name="NOTES" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IMG" Type="String" />
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="DEPARTMENT" Type="String" />
                    <asp:Parameter Name="SALARY" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="String" />
                    <asp:Parameter Name="NOTES" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_IMG" Type="String" />
                    <asp:Parameter Name="original_NAME" Type="String" />
                    <asp:Parameter Name="original_GENDER" Type="String" />
                    <asp:Parameter Name="original_DEPARTMENT" Type="String" />
                    <asp:Parameter Name="original_SALARY" Type="String" />
                    <asp:Parameter Name="original_START_DATE" Type="String" />
                    <asp:Parameter Name="original_NOTES" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>
       </div>
</asp:Content>
