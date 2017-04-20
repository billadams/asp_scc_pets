using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customers_AddPet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["custId"] != null)
        {
            lblCustId.Text = Convert.ToString(Session["custId"]);
        } 
        else
        {
            Response.Redirect("~/Customers/ListCustomers.aspx");
        }
    }
}