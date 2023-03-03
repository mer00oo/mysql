CREATE DATABASE market;

CREATE TABLE Customers (
    ID int NOT NULL,
    customerName varchar(255) NOT NULL,
    country varchar(255) 
    );
    
ALTER TABLE Customers
 ALTER country SET DEFAULT'USA';
 
 ALTER TABLE Customers
 ADD PRIMARY KEY(ID);
 
    
CREATE TABLE Orders (
    ID int NOT NULL,
    orderNumber int NOT NULL,
    status varchar(255)
    );
    
 ALTER TABLE Orders
 ADD PRIMARY KEY(ID);
    
CREATE TABLE Produt (
    ID int NOT NULL,
    productName varchar(255) NOT NULL,
    productLine varchar(255) NOT NULL
    );
    
 ALTER TABLE Produt 
 ADD PRIMARY KEY(ID);
 
ALTER TABLE Orders
ADD FOREIGN KEY Orders(ID) REFERENCES  Customers(ID);

ALTER TABLE Produt
ADD FOREIGN KEY Produt (ID) REFERENCES  Orders(ID);
    
    
    

 


    

 

    
    
    
    

