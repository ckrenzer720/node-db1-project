-- Database Queries

-- Find all customers with postal code 1010
{
    {
        CustomerID: 12,
        CustomerName: Cactus Comidas para llevar
        ContactName: Patricio Simpson
        Address: Cerrito 333
        City: Buenos Aires
        PostalCode: 1010
        Country: Argentina
    },
    {
        CustomerID: 54,
        CustomerName: Océano Atlántico Ltda.
        ContactName: Yvonne Moncada
        Address: Ing. Gustavo Moncada 8585 Piso 20-A
        City: Buenos Aires
        PostalCode: 1010
        Country: Argentina
    },
    {
        CustomerID: 64,
        CustomerName: Rancho grande
        ContactName: Sergio Gutiérrez
        Address: Av. del Libertador 900
        City: Buenos Aires
        PostalCode: 1010
        Country: Argentina
    }
}

-- Find the phone number for the supplier with the id 11
(010) 9984510

-- List first 10 orders placed, sorted descending by the order date
{
    { OrderID: 10257, OrderDate: 7/16/1996 }
    { OrderID: 10256, OrderDate: 7/15/1996 }
    { OrderID: 10255, OrderDate: 7/12/1996 }
    { OrderID: 10254, OrderDate: 7/11/1996 }
    { OrderID: 10253, OrderDate: 7/10/1996 }
    { OrderID: 10252, OrderDate: 7/9/1996 }
    { OrderID: 10249, OrderDate: 7/5/1996 }
    { OrderID: 10251, OrderDate: 7/8/1996 }
    { OrderID: 10250, OrderDate: 7/8/1996 }
    { OrderID: 10248, OrderDate: 7/4/1996 }
}

-- Find all customers that live in London, Madrid, or Brazil
{
    { 'London': ['Thomas Hardy', 'Victoria Ashworth', 'Elizabeth Brown', 'Ann Devon', 'Simon Crowther', 'Hari Kumar'] },
    { 'Madrid': ['Martín Sommer', 'Diego Roel', 'Alejandra Camino'] },
    { 'Brazil': ['Pedro Afonso', 'Aria Cruz', '	André Fonseca', 'Mario Pontes', 'Bernardo Batista', '	Lúcia Carvalho', 'Janete Limeira', 'Anabela Domingues', 'Paula Parente'] },
}

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ("The Shire", "Bilbo Baggins", "1 Hobbit-Hole", "Bag End", "111", "Middle Earth");

-- Update Bilbo Baggins record so that the postal code changes to "11122"
UPDATE Customers set PostalCode = '11122' where CustomerID = 92;
-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name
