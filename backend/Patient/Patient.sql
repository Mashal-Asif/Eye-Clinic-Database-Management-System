DROP TABLE IF EXISTS Patient;

CREATE TABLE Patient (
    Patient_ID INT AUTO_INCREMENT PRIMARY KEY,
    User_ID INT UNIQUE,
    Full_Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    Date_Of_Birth DATE,
    Phone VARCHAR(20),
    CNIC INT,
	Marital_Status ENUM('Single', 'Married', 'Divorced', 'Widowed') DEFAULT 'Single',
    Address VARCHAR(255),
    Registration_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);