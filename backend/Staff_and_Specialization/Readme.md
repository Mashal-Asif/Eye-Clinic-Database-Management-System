# Doctor Module (DBMS Design Overview)

This document explains the structure and purpose of the Doctor, Optometrist, and Ophthalmologist tables in an Eye Clinic Database Management System.

---

# 1. DOCTOR TABLE (Supertype)

The `Doctor` table is the main parent entity that stores common information about all doctors in the system, regardless of specialization.

## Purpose
- Stores general doctor information
- Acts as a superclass (ISA model)
- Connects with user authentication system

## Key Attributes Explained

- Doctor_ID → Unique identifier for each doctor  
- User_ID → Links doctor to login credentials in Users table  
- Full_Name → Doctor’s full name  
- Phone / Email → Contact information  
- Specialization → Type: Optometrist or Ophthalmologist  
- Experience_Years → Years of practice  
- Qualification → Academic degree or certifications  
- Working_Days → Availability schedule  
- License_Number → Professional registration ID  
- Is_Active → Status of doctor (active/inactive)  
- Joined_At → Timestamp of joining  

## Role in System
This table stores all common doctor data centrally, avoiding duplication across specializations.

---

# 2. OPTOMETRIST TABLE (Subtype)

The Optometrist table stores specialized data for vision-care doctors who do not perform surgeries.

## Purpose
- Extends Doctor table
- Stores optometry-specific skills and limitations

## Key Attributes Explained

- Optometrist_ID → Primary key  
- Doctor_ID → Foreign key referencing Doctor  
- Vision_Test_Certified → Certified for vision testing  
- Refraction_Specialist → Expertise in refractive errors  
- Prescription_Limitations → Medical restrictions  
- Contact_Lens_Specialist → Contact lens expertise  
- Clinic_Room_Number → Assigned room  

## Role in System
Handles routine eye exams and vision correction services.

---

# 3. OPHTHALMOLOGIST TABLE (Subtype)

The Ophthalmologist table stores data for medical eye specialists who perform surgeries and advanced treatments.

## Purpose
- Extends Doctor table
- Stores surgical and medical expertise

## Key Attributes Explained

- Ophthalmologist_ID → Primary key  
- Doctor_ID → Foreign key referencing Doctor  
- Surgery_License → Permission to perform surgery  
- Surgery_Type_Specialization → Types of surgeries (e.g., cataract, LASIK)  
- Hospital_Affiliation → Associated hospital  
- Emergency_Cases → Emergency availability  
- Operating_Room_Assigned → Assigned operating room  

## Role in System
Handles eye diseases, surgeries, and emergency treatments.

---

# 4. RELATIONSHIP STRUCTURE (ISA MODEL)

This design follows an ISA (Inheritance) relationship:

Doctor (Parent)
    ├── Optometrist (Child)
    └── Ophthalmologist (Child)

## Benefits
- No data duplication
- Better normalization (3NF)
- Clear role separation
- Scalable design for future roles

---

# 5. SUMMARY

| Table | Purpose |
|------|--------|
| Doctor | Stores general doctor information |
| Optometrist | Vision care specialization |
| Ophthalmologist | Surgical eye care specialization |

---

# Final Note

This is a clean hospital-grade database design where shared data stays in one place and specialization is handled separately for clarity and scalability.