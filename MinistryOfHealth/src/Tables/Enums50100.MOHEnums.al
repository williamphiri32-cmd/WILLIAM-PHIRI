enum 50100 "MOH Gender"
{
    Caption = 'Gender';
    Extensible = true;

    value(0; " ") { Caption = ' '; }
    value(1; Male) { Caption = 'Male'; }
    value(2; Female) { Caption = 'Female'; }
    value(3; Other) { Caption = 'Other'; }
}

enum 50101 "MOH Blood Type"
{
    Caption = 'Blood Type';
    Extensible = true;

    value(0; " ") { Caption = ' '; }
    value(1; "A+") { Caption = 'A+'; }
    value(2; "A-") { Caption = 'A-'; }
    value(3; "B+") { Caption = 'B+'; }
    value(4; "B-") { Caption = 'B-'; }
    value(5; "AB+") { Caption = 'AB+'; }
    value(6; "AB-") { Caption = 'AB-'; }
    value(7; "O+") { Caption = 'O+'; }
    value(8; "O-") { Caption = 'O-'; }
}

enum 50102 "MOH Facility Type"
{
    Caption = 'Facility Type';
    Extensible = true;

    value(0; " ") { Caption = ' '; }
    value(1; Hospital) { Caption = 'Hospital'; }
    value(2; Clinic) { Caption = 'Clinic'; }
    value(3; "Health Centre") { Caption = 'Health Centre'; }
    value(4; Dispensary) { Caption = 'Dispensary'; }
}

enum 50103 "MOH Department"
{
    Caption = 'Department';
    Extensible = true;

    value(0; " ") { Caption = ' '; }
    value(1; General) { Caption = 'General'; }
    value(2; Paediatrics) { Caption = 'Paediatrics'; }
    value(3; Maternity) { Caption = 'Maternity'; }
    value(4; Surgery) { Caption = 'Surgery'; }
    value(5; Pharmacy) { Caption = 'Pharmacy'; }
    value(6; Laboratory) { Caption = 'Laboratory'; }
    value(7; Radiology) { Caption = 'Radiology'; }
    value(8; Administration) { Caption = 'Administration'; }
}
