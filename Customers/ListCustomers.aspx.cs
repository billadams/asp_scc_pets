using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customers_ListCustomers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt16(GridView1.SelectedValue);
        Session["custId"] = id;

        Response.Redirect("~/Customers/AddPet.aspx");
    }
}