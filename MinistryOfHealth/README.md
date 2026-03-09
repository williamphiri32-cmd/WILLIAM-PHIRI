# Ministry of Health Management System

A Microsoft Dynamics 365 Business Central extension for managing Ministry of Health operations.

## Features

- **Patient Management** – Register and track patient records including personal details, blood type, and assigned health facility.
- **Health Facility Administration** – Manage hospitals, clinics, health centres, and dispensaries across districts and provinces.
- **Staff Management** – Maintain records of health workers, their departments, licenses, and facility assignments.
- **Medical Records** – Log patient visits, diagnoses, treatments, and schedule follow-ups.

## Project Structure

```
MinistryOfHealth/
├── app.json                          # Extension manifest
└── src/
    ├── Tables/
    │   ├── Tab50100.MOHPatient.al         # Patient table
    │   ├── Tab50101.MOHHealthFacility.al  # Health Facility table
    │   ├── Tab50102.MOHStaff.al           # Staff table
    │   ├── Tab50103.MOHMedicalRecord.al   # Medical Record table
    │   └── Enums50100.MOHEnums.al         # Shared enumerations
    └── Pages/
        ├── Pag50100.MOHPatientList.al          # Patient list page
        ├── Pag50101.MOHPatientCard.al          # Patient card page
        ├── Pag50102.MOHHealthFacilityList.al   # Health Facility list page
        ├── Pag50103.MOHHealthFacilityCard.al   # Health Facility card page
        ├── Pag50104.MOHStaffList.al            # Staff list page
        ├── Pag50105.MOHStaffCard.al            # Staff card page
        ├── Pag50106.MOHMedicalRecords.al       # Medical Records list page
        └── Pag50107.MOHRoleCentre.al           # Role Centre
```

## Object ID Range

All objects use IDs in the range **50100 – 50149**.

## Prerequisites

- Visual Studio Code with the [AL Language extension](https://marketplace.visualstudio.com/items?itemName=ms-dynamics-smb.al)
- Microsoft Dynamics 365 Business Central (v22.0 or later)

## Getting Started

1. Open the `MinistryOfHealth` folder in Visual Studio Code.
2. Press `Alt+A, Alt+L` to download AL symbols.
3. Press `F5` to publish the extension to your sandbox environment.
