
Both  Authentiation and Patient modules are connected through the Users table.
 
## 1. Authentication Module

This module manages system access, user identities, and admin-level patient control.

### Tables:
- Users
- Roles
- Patient_Management

### Responsibilities:
- User login and identity management
- Role-based access control (RBAC)
- Admin tracking of patient-related actions

## 2. Patient Module

This module stores all core patient information independently of authentication logic.

### Tables:
- Patient

### Responsibilities:
- Stores patient demographic and medical details
- Represents real-world patient entity in the clinic system
- Can optionally be linked to system users

##  Module Connection

Even though Patient is a separate module, it is linked to the Authentication system:

### Connection:
- Each Patient may be associated with a User account (via User_ID)
- This enables patient portal access (optional login system)

### Relationship:

- Roles → Users (1:M)
- Users → Patient_Management (1:M via Admin actions)
- Users → Patient (1:1 optional link)

## Features

- Modular database architecture
- Role-based authentication system
- Patient data isolation from authentication logic
- Admin audit tracking via Patient_Management
- Flexible user-patient linking system

## Author

**Mashal Asif, Syeda Linta, Zubia Ghufran**  
Computer Science Engineering Students (24MDSWE317, 318, 326)  
