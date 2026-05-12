CREATE TABLE Medication (
    Medication_ID INT AUTO_INCREMENT PRIMARY KEY,

    Medicine_Name VARCHAR(100) NOT NULL,
    Generic_Name VARCHAR(100),

    Dosage VARCHAR(50),
    -- e.g. "5mg", "10ml"

    Form ENUM('Tablet', 'Drops', 'Syrup', 'Ointment') NOT NULL,

    Manufacturer VARCHAR(100),

    Cost_Price DECIMAL(10,2),
    Sale_Price DECIMAL(10,2),

    Stock_Quantity INT DEFAULT 0,

    Expiry_Date DATE,

    Reorder_Level INT DEFAULT 10
);