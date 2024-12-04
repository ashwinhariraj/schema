-- Create Products Table
CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Description TEXT NOT NULL
);

-- Create Images Table
CREATE TABLE Images (
    ImageID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductID INTEGER NOT NULL,
    ImageURL TEXT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Prices Table
CREATE TABLE Prices (
    PriceID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductID INTEGER NOT NULL,
    Price REAL NOT NULL,
    Currency TEXT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Details Table
CREATE TABLE Details (
    DetailID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductID INTEGER NOT NULL,
    Key TEXT NOT NULL,
    Value TEXT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert Data into Products Table
INSERT INTO Products (Name, Description) VALUES ('Laptop', 'A gaming laptop');

-- Insert Data into Images Table
INSERT INTO Images (ProductID, ImageURL) VALUES (1, 'image1.jpg');

-- Insert Data into Prices Table
INSERT INTO Prices (ProductID, Price, Currency) VALUES (1, 1000.00, 'USD');

-- Insert Data into Details Table
INSERT INTO Details (ProductID, Key, Value) VALUES (1, 'RAM', '16GB');