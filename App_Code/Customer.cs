using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Customer
{
    public string FirstName { get; set; }

    public string LastName { get; set; }

    public string Phone { get; set; }

    public string Address { get; set; }

    public DateTime DateOfBirth { get; set; }

    public Decimal Balance { get; set; }

    public int Id { get; set; }
    
    public string Image { get; set; }

    public string Note { get; set; }

    private static int nextId = 3000;

    public Customer()
    {
        Id = nextId;
        nextId++;
    }

    public Customer(string firstName, string lastName, string phone, string address, 
                    DateTime dateOfBirth, Decimal balance, string imagePath, string imageNote)
    {
        this.FirstName = firstName;
        this.LastName = lastName;
        this.Phone = phone;
        this.Address = address;
        this.DateOfBirth = dateOfBirth;
        this.Balance = balance;
        this.Image = imagePath;
        this.Note = imageNote;

        this.Id = nextId;
        nextId++;
    }
}