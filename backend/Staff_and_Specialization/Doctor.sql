CREATE TABLE Doctor (
    Doctor_ID INT AUTO_INCREMENT PRIMARY KEY,
    User_ID INT NOT NULL UNIQUE,
    Full_Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    Specialization ENUM('Ophthalmologist', 'Optometrist') NOT NULL,
    Experience_Years INT CHECK (Experience_Years >= 0),
    Qualification VARCHAR(100),
    Working_Days VARCHAR(100),
    License_Number VARCHAR(50) UNIQUE,
    Is_Active BOOLEAN DEFAULT TRUE,
    Joined_At DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);