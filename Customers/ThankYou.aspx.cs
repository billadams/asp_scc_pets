using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customers_ThankYou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["newCustomer"] != null)
        {
            Customer customer = (Customer) Session["newCustomer"];

            lblUser.Text = customer.FirstName;
        }
        else
        {
            Response.Redirect("~/Customers/AddCustomer.aspx");
        }

    }


}