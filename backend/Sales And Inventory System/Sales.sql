CREATE TABLE Sales (
    Sale_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID INT NOT NULL,
    Sale_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Total_Amount DECIMAL(10,2) DEFAULT 0,
    Discount DECIMAL(10,2) DEFAULT 0,
    Net_Amount DECIMAL(10,2) GENERATED ALWAYS AS (Total_Amount - Discount) STORED,
    Payment_Method ENUM('Cash', 'Card', 'Online') DEFAULT 'Cash',
    Payment_Status ENUM('Paid', 'Unpaid', 'Partial') DEFAULT 'Paid',
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);