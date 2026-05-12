# Analytics Layer (Eye Clinic DBMS)

This document explains the **Analytics Layer** of the EyeClinicDB system.  
The main component of this layer is the **Visit_Log table**, which acts as a unified source for reporting, analysis, and decision-making.

---

#  1. VISIT LOG TABLE

The `Visit_Log` table records every patient interaction in the clinic, whether it is an appointment, walk-in, follow-up, or emergency case.

It acts as a **central analytics entity** for tracking clinical and financial activity.

---

## Purpose

- Track all patient visits in one place  
- Link clinical and financial data  
- Support reporting and analytics  
- Measure doctor and clinic performance  

---

## Table Structure

---
CREATE TABLE Visit_Log (
    Visit_ID INT AUTO_INCREMENT PRIMARY KEY,

    Patient_ID INT NOT NULL,
    Doctor_ID INT NOT NULL,
    Appointment_ID INT NULL,

    Visit_Date DATETIME DEFAULT CURRENT_TIMESTAMP,

    Visit_Type ENUM('Appointment', 'Walk-in', 'Follow-up', 'Emergency') NOT NULL,

    Diagnosis VARCHAR(255),
    Treatment_Action VARCHAR(255),

    Prescription_Issued BOOLEAN DEFAULT FALSE,
    Sale_Generated BOOLEAN DEFAULT FALSE,

    Revenue_Generated DECIMAL(10,2) DEFAULT 0,

    Visit_Duration_Minutes INT,

    Outcome ENUM('Improved', 'Referred', 'Stable', 'Surgery Required'),

    Notes TEXT,

    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
    FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID)
);
---