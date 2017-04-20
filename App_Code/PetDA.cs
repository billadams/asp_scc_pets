using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for PetDA
/// </summary>
public class PetDA
{

    public static void SaveCustomer(Customer customer)
    {
        SqlConnection connection = GetConnection();

        string insertStatement = "INSERT INTO Customers " +
                                    "(LastName, FirstName, Phone, Address, DateOfBirth, Balance, ImagePath, ImageNote) " +
                                  "VALUES " +
                                    "(@LastName, @FirstName, @Phone, @Address, @DateOfBirth, @Balance, @ImagePath, @ImageNote)";


        SqlCommand insertCommand = new SqlCommand(insertStatement, connection);

        insertCommand.Parameters.AddWithValue("@LastName",    customer.LastName);
        insertCommand.Parameters.AddWithValue("@FirstName",   customer.FirstName);
        insertCommand.Parameters.AddWithValue("@Phone",       customer.Phone);
        insertCommand.Parameters.AddWithValue("@Address",     customer.Address);
        insertCommand.Parameters.AddWithValue("@DateOfBirth", customer.DateOfBirth);
        insertCommand.Parameters.AddWithValue("@Balance",     customer.Balance);
        insertCommand.Parameters.AddWithValue("@ImagePath",   customer.Image);
        insertCommand.Parameters.AddWithValue("@ImageNote",   customer.Note);

        try
        {
            connection.Open();
            insertCommand.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {

        }
    }

    public static SqlConnection GetConnection()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["PetConnectionString"].ConnectionString;

        SqlConnection connection = new SqlConnection(connectionString);

        return connection;
    }

}