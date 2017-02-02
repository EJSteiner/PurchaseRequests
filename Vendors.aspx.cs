using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PurchasingTableAdapters;

public partial class PurchaseRequest_PurchaseRequest_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void grdVendors_SelectedIndexChanged(object sender, EventArgs e)
    {
        string goToURL = "catalog.aspx?vendorID=" + grdVendors.SelectedValue;
        Response.Redirect(goToURL);
    }

    protected void radByName_CheckedChanged(object sender, EventArgs e)
    {
        hidSearchBy.Value = "Name";
    }

    protected void radByState_CheckedChanged(object sender, EventArgs e)
    {
        hidSearchBy.Value = "State";
    }

    protected void radAll_CheckedChanged(object sender, EventArgs e)
    {
        hidSearchBy.Value = "";
    }
}