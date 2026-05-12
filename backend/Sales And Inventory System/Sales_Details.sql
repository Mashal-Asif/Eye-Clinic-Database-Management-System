CREATE TABLE Sales_Details (
    Sales_Detail_ID INT AUTO_INCREMENT PRIMARY KEY,

    Sale_ID INT NOT NULL,

    Product_ID INT NULL,
    Medication_ID INT NULL,

    Item_Type ENUM('Optical_Product', 'Medication') NOT NULL,

    Quantity INT NOT NULL,

    Unit_Price DECIMAL(10,2) NOT NULL,

    Sub_Total DECIMAL(10,2) GENERATED ALWAYS AS (Quantity * Unit_Price) STORED,

    FOREIGN KEY (Sale_ID) REFERENCES Sales(Sale_ID),
    FOREIGN KEY (Product_ID) REFERENCES Optical_Product(Product_ID),
    FOREIGN KEY (Medication_ID) REFERENCES Medication(Medication_ID)
);