<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseRequest/PurchaseRequest/Main.master" AutoEventWireup="true" CodeFile="Vendors.aspx.cs" Inherits="PurchaseRequest_PurchaseRequest_Default2" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="Server">
    <style>
        .searchForm {
            float: right;
            display: inline-block;
            font-weight: bold;
            white-space: nowrap;
            margin-top: 5px;
            margin-bottom: 20px;
            
        }
    </style>
    

</asp:Content>
<asp:Content ID="bodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Vendors</h2>
    <p>
        Pre-approved vendors should be chosen whenever possible.
                In the following list of available vendors. pre-approved vendors are indicated by a ... in the first column of the table.
                The list may be searched by vendor name, or by 2 character state abbreviation.
                
    </p>
    <div>
        <span class="searchForm">
            <span>Search</span>
            <asp:TextBox ID="txtVendorSearch" runat="server"></asp:TextBox>
            <asp:RadioButton ID="radByName" runat="server" ClientIDMode="Static" GroupName="radSearchBy" Text="By Name" CssClass="radioSearch" AutoPostBack="True" OnCheckedChanged="radByName_CheckedChanged" />
            <asp:RadioButton ID="radByState" runat="server" ClientIDMode="Static" GroupName="radSearchBy" Text="By State" AutoPostBack="True" OnCheckedChanged="radByState_CheckedChanged" />
            <asp:RadioButton ID="radAll" runat="server" ClientIDMode="Static" GroupName="radSearchBy" Text="All" AutoPostBack="True" OnCheckedChanged="radAll_CheckedChanged" />

            <asp:HiddenField ID="hidSearchBy" runat="server" ClientIDMode="Static" />
            <br /><br />
            &nbsp;&nbsp;
            </span>
    </div>
    <div style="clear: right">
        <asp:GridView ID="grdVendors" runat="server" AutoGenerateColumns="False" DataKeyNames="VendorID" DataSourceID="odsVendors" OnSelectedIndexChanged="grdVendors_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Catalog" ShowSelectButton="True" />
                <asp:CheckBoxField DataField="PreApproved" HeaderText="PreApproved" SortExpression="PreApproved" />
                <asp:BoundField DataField="VendorCode" HeaderText="VendorCode" SortExpression="VendorCode" />
                <asp:TemplateField HeaderText="CompanyName" SortExpression="CompanyName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CityStateZip") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:HyperLinkField DataNavigateUrlFields="Website" Text="Website" Target="_blank" />
            </Columns>
            <EmptyDataTemplate>
                No vendors were found that matched search criteria
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsVendors" runat="server" SelectMethod="getVendors" TypeName="DataClasses" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:ControlParameter ControlID="hidSearchBy" DefaultValue="" Name="selectCriteria" PropertyName="Value" Type="String" />
                <asp:ControlParameter ControlID="txtVendorSearch" Name="selectValue" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

