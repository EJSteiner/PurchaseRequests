using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["LoginID"] == null)
            {
                btnLoginOut.Text = "Login";
            } else
            {
                ltrUserName.Text = Session["LoginID"].ToString();
                btnLoginOut.Text = "Logout";
            }
        }
    }
}
