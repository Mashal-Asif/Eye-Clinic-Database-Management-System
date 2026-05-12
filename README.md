# Eye Clinic Database Management System

A complete relational database system for managing an Eye Clinic, covering clinical operations, staff management, authentication, inventory, sales, and analytics.

---

# System Overview

The Eye Clinic DBMS is designed as a fully integrated system that simulates real-world clinic operations. It is divided into multiple functional layers:

- Authentication Layer
- Staff & Specialization Module
- Patient Management
- Core Clinical Workflow
- Sales & Inventory System
- Analytics Layer

---

# 1. Authentication Layer

This layer manages system access and user roles.

### Key Components:
- Users
- Roles

### Purpose:
- Secure login system
- Role-based access control
- Separation of admin, doctor, and staff privileges

---

# 2. Staff & Specialization Module

This module defines all clinic staff and doctor hierarchy.

### Entities:
- Doctor (Supertype)
- Ophthalmologist (Subtype)
- Optometrist (Subtype)
- Receptionist
- Technician
- Clinic Assistant

### Purpose:
- Manage clinical and support staff
- Implement ISA relationship for doctors
- Assign responsibilities based on roles

---

# 3. Patient Module

### Entity:
- Patient

### Purpose:
- Stores patient demographic and medical identity
- Central entity for all clinical and billing processes

---

# 4. Core Clinical Flow

This is the medical workflow of the system.

### Entities:
- Appointment
- Examination
- Prescription

### Workflow:

```text
Patient → Appointment → Examination → Prescription
