#  Sales & Inventory Module (Eye Clinic DBMS) — Summary

This module manages all **clinic business operations**, including optical products, medications, billing, and stock control.

---

# 1. PURPOSE

The Sales & Inventory module is responsible for:

- Managing optical products (frames, lenses, etc.)
- Managing medications (eye drops, tablets, etc.)
- Handling sales and billing
- Tracking stock levels and inventory movement
- Linking prescriptions to purchases

---

# 2. CORE TABLES

### Optical_Product
Stores eyewear items like frames, lenses, and contact lenses.

### Medication
Stores pharmaceutical products used for eye treatment.

### Sales
Stores invoice header information (patient billing, total amount, payment status).

### Sales_Details
Stores item-wise breakdown of each sale (products + medicines).

### Inventory_Transaction (Recommended)
Tracks stock changes due to purchase, sale, return, or adjustment.

---

# 3. WORKFLOW
---
text
Prescription → Sales → Sales_Details → Inventory Update