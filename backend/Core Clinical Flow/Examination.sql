CREATE TABLE Examination (
    Examination_ID INT AUTO_INCREMENT PRIMARY KEY,

    Appointment_ID INT NOT NULL UNIQUE,
    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,

    Examination_Date DATETIME DEFAULT CURRENT_TIMESTAMP,

    Visual_Acuity_Right VARCHAR(20),
    Visual_Acuity_Left VARCHAR(20),

    Intraocular_Pressure_Right DECIMAL(5,2),
    Intraocular_Pressure_Left DECIMAL(5,2),

    Eye_Redness BOOLEAN DEFAULT FALSE,
    Dry_Eye BOOLEAN DEFAULT FALSE,
    Infection_Suspected BOOLEAN DEFAULT FALSE,

    Diagnosis VARCHAR(255),

    Recommendation VARCHAR(255),

    Need_Prescription BOOLEAN DEFAULT TRUE,

    Need_Surgery BOOLEAN DEFAULT FALSE,

    Follow_Up_Required BOOLEAN DEFAULT FALSE,

    Follow_Up_Date DATE,

    Notes TEXT,

    FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);