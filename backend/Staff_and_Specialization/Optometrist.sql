CREATE TABLE Optometrist (
    Optometrist_ID INT PRIMARY KEY,
    Doctor_ID INT UNIQUE NOT NULL,
    Vision_Test_Certified BOOLEAN DEFAULT TRUE,
    Refraction_Specialist BOOLEAN DEFAULT TRUE,
    Prescription_Limitations VARCHAR(200), 
    -- e.g. "Cannot prescribe controlled ophthalmic drugs"
    Contact_Lens_Specialist BOOLEAN DEFAULT FALSE,
    Clinic_Room_Number VARCHAR(20),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);