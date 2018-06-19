<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;<%: Title %></h2>
    <h2>STUDENTS DATABASE:</h2>
    <h2>grid view:</h2>
<p>STUDENT DETAILS: </p>

    <address style="background-color: #FFFFFF; font-family: 'Segoe Script';">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="student_id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#0099FF" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="441px" CellSpacing="4">
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="student_id" ReadOnly="True" SortExpression="student_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="school_name" HeaderText="school_name" SortExpression="school_name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoConnectionString2 %>" SelectCommand="SELECT * FROM [R_Students]"></asp:SqlDataSource>
    </address>
    <h2>dropdown view:</h2>

    <address>
        CHOOSE STUDENT:
        </address>
    <address>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="student_id" Height="54px" Width="215px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=chn-srv-db;Initial Catalog=Demo;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [R_Subjects]"></asp:SqlDataSource>
    </address>
    <address>
        &nbsp;</address>
<address property="og:video">
        &nbsp;</address>
<address>
        &nbsp;</address>
</asp:Content>
