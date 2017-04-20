using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAboutUs_Click(object sender, EventArgs e)
    {
        //Server.Transfer("AboutUs.aspx");
        Response.Redirect("~/AboutUs/AboutUs.aspx");
    }

    protected void btnAddCustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customers/AddCustomer.aspx");
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
