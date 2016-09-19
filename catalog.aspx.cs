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

    
    protected void ddlVendorNames_SelectedIndexChanged(object sender, EventArgs e)
    {
        ltrVendorName.Text = ddlVendorNames.SelectedItem.ToString();
    }



    protected void ddlVendorNames_DataBound(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string queryVendorID = Request.QueryString["VendorID"];
            
            if (queryVendorID != null)
            {
                //ddlVendorNames.SelectedValue = queryVendorID;
                foreach (ListItem v in ddlVendorNames.Items)
                {
                    if (v.Value == queryVendorID)
                    {
                        v.Selected = true;
                        
                    }
                }
            }

            ltrVendorName.Text = ddlVendorNames.SelectedItem.ToString();
        }
    }
}