CREATE TABLE Clinic_Assistant (
    Assistant_ID INT AUTO_INCREMENT PRIMARY KEY,

    User_ID INT UNIQUE NOT NULL,

    Full_Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),

    Assigned_Doctor_ID INT,

    Task_Type ENUM('Patient Prep', 'Room Setup', 'Basic Assistance') NOT NULL,

    Shift ENUM('Morning', 'Evening') NOT NULL,

    Is_Active BOOLEAN DEFAULT TRUE,

    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Assigned_Doctor_ID) REFERENCES Doctor(Doctor_ID)
);