CREATE TABLE Prescription (
    Prescription_ID INT AUTO_INCREMENT PRIMARY KEY,

    Appointment_ID INT NOT NULL,
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,

    Prescription_Date DATETIME DEFAULT CURRENT_TIMESTAMP,

    Prescription_Type ENUM('Eyeglasses', 'Contact Lens', 'Medication', 'Surgery Advice') NOT NULL,

    Right_Eye_SPH DECIMAL(4,2),
    Right_Eye_CYL DECIMAL(4,2),
    Right_Eye_AXIS INT,

    Left_Eye_SPH DECIMAL(4,2),
    Left_Eye_CYL DECIMAL(4,2),
    Left_Eye_AXIS INT,

    Add_Power DECIMAL(4,2),

    Eye_Condition VARCHAR(255),

    Medication_Notes TEXT,

    Lens_Type VARCHAR(100),

    Follow_Up_Date DATE,

    FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);