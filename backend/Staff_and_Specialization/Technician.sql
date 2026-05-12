CREATE TABLE Technician (
    Technician_ID INT AUTO_INCREMENT PRIMARY KEY,

    User_ID INT UNIQUE NOT NULL,

    Full_Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100) UNIQUE,

    Skill_Type ENUM('Vision Testing', 'Lens Fitting', 'Equipment Handling') NOT NULL,

    Experience_Years INT DEFAULT 0,

    Shift ENUM('Morning', 'Evening') NOT NULL,

    Is_Active BOOLEAN DEFAULT TRUE,

    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);