<%@ Page Title="" Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" CodeFile="catalog.aspx.cs" Inherits="PurchaseRequest_PurchaseRequest_Default2" %>

<%--<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseRequest/PurchaseRequest/Main.master" AutoEventWireup="true" CodeFile="catalog.aspx.cs" Inherits="PurchaseRequest_PurchaseRequest_Default2" %>--%>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="Server">
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/myObjects.js"></script>
    <link href="Content/catalog.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="bodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" ClientIDMode="Static">
    <div id="top5">
        <h2>Top 5 Vendors</h2>
        <%--<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseRequest/PurchaseRequest/Main.master" AutoEventWireup="true" CodeFile="catalog.aspx.cs" Inherits="PurchaseRequest_PurchaseRequest_Default2" %>--%>
        <asp:BulletedList ID="lstTop5" runat="server" BulletStyle="Numbered" DataSourceID="odsTop5" DataTextField="CompanyName" DataValueField="CompanyName">

        </asp:BulletedList>
        <asp:ObjectDataSource ID="odsTop5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="PurchasingTableAdapters.getTop5VendorsTableAdapter"></asp:ObjectDataSource>
    </div>
    <div id="catalog" >
        <h2>
            <asp:Literal ID="ltrVendorName" runat="server"></asp:Literal>
            Catalog</h2>
        <div>
            <asp:DropDownList ID="ddlVendorNames" runat="server" AutoPostBack="True" DataSourceID="odsVendorNames" DataTextField="CompanyName" DataValueField="VendorID" OnSelectedIndexChanged="ddlVendorNames_SelectedIndexChanged" ClientIDMode="Static" OnDataBound="ddlVendorNames_DataBound"></asp:DropDownList>

            <asp:ObjectDataSource ID="odsVendorNames" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="PurchasingTableAdapters.getVendorNamesTableAdapter"></asp:ObjectDataSource>

        </div>
        <div id="itemDiv">
            <asp:GridView ID="grdCatlog" runat="server" AutoGenerateColumns="False" DataSourceID="odsCatlog" Width="90%" CssClass="itemTable" DataKeyNames="ItemID">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="VendorPartNo" HeaderText="Vendor Part No." SortExpression="VendorPartNo" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" SortExpression="UnitPrice" />
                </Columns>
                <EmptyDataTemplate>
                    No catalog items were found for the selected vendor.
                </EmptyDataTemplate>
            </asp:GridView> 
            <asp:ObjectDataSource ID="odsCatlog" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                TypeName="PurchasingTableAdapters.getVendorCatalogTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlVendorNames" DefaultValue="0" Name="vendor" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>

