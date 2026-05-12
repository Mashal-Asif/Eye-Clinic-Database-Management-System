CREATE TABLE Optical_Product (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,

    Product_Name VARCHAR(100) NOT NULL,
    Product_Type ENUM('Frame', 'Lens', 'Contact Lens', 'Accessory') NOT NULL,

    Brand VARCHAR(100),

    Frame_Material VARCHAR(100),
    Lens_Type VARCHAR(100),

    Power_Range VARCHAR(50),
    -- e.g. "-5.00 to +5.00"

    Color VARCHAR(50),

    Cost_Price DECIMAL(10,2) NOT NULL,
    Sale_Price DECIMAL(10,2) NOT NULL,

    Stock_Quantity INT DEFAULT 0,

    Supplier_Name VARCHAR(100),

    Reorder_Level INT DEFAULT 5,

    Created_At DATETIME DEFAULT CURRENT_TIMESTAMP
);