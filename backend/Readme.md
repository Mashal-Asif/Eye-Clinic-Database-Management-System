# Eye Clinic Management System

## Project Overview
This project is a comprehensive database-driven management system designed for an eye clinic. It handles the complete lifecycle of clinical operations, ranging from administrative user authentication and staff management to patient appointments, examinations, prescriptions, and a retail sales system for optical products.

The architecture follows a modular approach, separating authentication, core clinical workflows, and sales analytics to ensure data integrity and operational efficiency.

---

## Database Architecture
The system is built upon a relational database model with several key subsystems:

### 1. Authentication & Role Management
The system utilizes a central **User** entity to manage access for different roles:
* **Admin:** Oversees system settings and staff management.
* **Doctor:** Conducts consultations and issues prescriptions.
* **Receptionist:** Manages patient registration and appointment scheduling.

### 2. Staff & Specialization
The database implements a Supertype/Subtype relationship for medical staff:
* **Doctor (Supertype):** Stores common attributes like name, contact info, experience, and working days.
* **Ophthalmologist (Subtype):** Specializes in surgical procedures.
* **Optometrist (Subtype):** Specializes in vision tests and lens prescriptions.

### 3. Core Clinic Flow
This module captures the clinical interaction through a sequence of linked entities:
* **Patient Management:** Registration of demographic details (Name, CNIC, Age, Gender).
* **Appointments:** Scheduling sessions between patients and doctors.
* **Examinations (1:0..1):** Optional clinical findings (visual acuity, pressure, etc.) recorded during the appointment.
* **Prescriptions:** Digital records of medicines and clinical notes generated from specific appointments.

### 4. Sales System
A retail layer for managing optical inventory and sales:
* **Optical Product:** A catalog of lenses, frames, and accessories with real-time stock tracking.
* **Sale & Sale Details:** A header-and-line-item structure to process patient purchases.

### 5. Analytics (Visit Log)
A logging mechanism to track clinic traffic and appointment frequency for administrative reporting and clinic statistics.

---

## Entity Relationship Diagram (ERD) Structure
The database design follows these primary business rules:
* A **User** manages or creates records across different modules.
* A **Patient** books one or more **Appointments**.
* An **Appointment** may optionally generate one **Examination** record (1-to-0..1).
* Each **Appointment** generates exactly one **Prescription**.
* An **Optical Product** is included in **Sale Details** which belongs to a **Sale**.

---

## Technical Implementation
The system is designed to be implemented using SQL with the following considerations:
* **Data Integrity:** Use of Foreign Keys and Composite Primary Keys.
* **Zero-to-One Relationships:** Implemented via `UNIQUE` constraints on Foreign Keys in the `EXAMINATION` and `PRESCRIPTION` tables.
* **Scalability:** Normalized tables to reduce redundancy and ensure efficient data retrieval.
* **Financial Accuracy:** Use of `DECIMAL` types for all pricing and subtotals.

## Future Enhancements
* Automated stock deduction triggers upon sale completion.
* Integration of a messaging API for appointment reminders.
* Patient medical history timeline visualization.