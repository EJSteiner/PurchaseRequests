<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseRequest/PurchaseRequest/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="PurchaseRequest_PurchaseRequest_Default2" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <style>
        #bodyContent {
            display:flex;
        }
        .dataLabel {
            flex:1;
            text-align:right;

        }
        input {
            flex:3;
            margin-left:2em;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Sign In ID:" CssClass="dataLabel">
    </asp:Label>
    <asp:TextBox ID="txtLoginID" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="  Password:" CssClass="dataLabel">
    </asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="buttons" />
</asp:Content>

