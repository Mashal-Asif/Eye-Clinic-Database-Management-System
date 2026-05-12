CREATE TABLE Ophthalmologist (
    Ophthalmologist_ID INT PRIMARY KEY,
    Doctor_ID INT UNIQUE NOT NULL,
    Surgery_License BOOLEAN DEFAULT TRUE,
    Surgery_Type_Specialization VARCHAR(200),
    -- e.g. "Cataract, LASIK, Retina Surgery"
    Hospital_Affiliation VARCHAR(150),
    Emergency_Cases BOOLEAN DEFAULT TRUE,
    Operating_Room_Assigned VARCHAR(20),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);