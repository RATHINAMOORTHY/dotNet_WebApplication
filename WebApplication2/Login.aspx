<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <h3>Please Login to Continue.</h3>
    <p>&nbsp;</p>
    <p style="font-family: Arial; font-size: 20px; font-weight: bold; font-style: inherit; font-variant: small-caps; text-transform: uppercase; color: #0000FF">LOGIN:</p>
    <p>USERNAME:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp; 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Please enter the username" ForeColor="Red" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ClientIDMode="Predictable" ControlToValidate="TextBox1" ErrorMessage="Enter valid email!" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>
    </p>
    <p>PASSWORD:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" MaxLength="20" TabIndex="1"></asp:TextBox>
&nbsp; 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="Please enter the password" ForeColor="Red" ></asp:RequiredFieldValidator>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" TabIndex="2" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" TabIndex="3" />
        <asp:TextBox ID="txtErrorMessage" runat="server" Visible="false" ></asp:TextBox>
    </p>
</asp:Content>
