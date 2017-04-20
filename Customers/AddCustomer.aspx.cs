using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customers_AddCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        //Theme = "Blue";
    }

    protected void btnCreateCustomer_Click(object sender, EventArgs e)
    {
        string firstName;
        string lastName;
        string phone;
        string address;
        DateTime dateOfBirth;
        decimal balance;
        string imagePath;
        string note;

        firstName = txtFirstName.Text;
        lastName = txtLastName.Text;
        phone = txtPhone.Text;
        address = txtAddress.Text;
        dateOfBirth = Convert.ToDateTime(txtDOB.Text);
        balance = Convert.ToDecimal(txtBalance.Text);
        imagePath = txtImagePath.Text;
        note = txtImageNote.Text;

        Customer customer = new Customer(firstName, lastName, phone, address, dateOfBirth, balance, imagePath, note);

        // Save the new customer to the database.
        PetDA.SaveCustomer(customer);

        Session["newCustomer"] = customer;

        Response.Redirect("~/Customers/ThankYou.aspx");
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}