<%@ Page Title="" Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #pictureGroup {
            clear: both;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5em;
            display: inline;
        }

            #pictureGroup img {
                height: 10em;
                display: inline;
                margin-right: 1em;
                margin-left: 1em;
            }
    </style>
    <script>
        $(document).ready(function () {
            $("#imgNew").click(function ()
            { $(location).attr('href', 'createRequest.html') })
            $("#imgReview").click(function ()
            { $(location).attr('href', 'reviewRequests.html') })
            $("#imgApprove").click(function ()
            { $(location).attr('href', 'approveRequests.html') })
            $("#imgCatalog").click(function ()
            { $(location).attr('href', 'vendors.aspx') })
        });


    </script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span id="pictureGroup">
                <img src="images/new.jpg" alt="Enter New Request" id="imgNew"
                    title="Create New Request" />
                <img src="images/review.jpg" alt="Review Requests" id="imgReview"
                    title= "Review Requests"/>
                <img src="images/approve.jpg" alt="Approve Requests" id="imgApprove" 
                    title="Approve Requests"/>
                <img src="images/vendors.jpg" alt="View Vendor Catalogs" id="imgCatalog"
                    title="View Vendor Catalogs" />
            </span>
</asp:Content>

