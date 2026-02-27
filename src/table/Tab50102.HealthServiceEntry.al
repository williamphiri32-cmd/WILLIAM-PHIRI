table 50102 "Health Service Entry"
{
    Caption = 'Health Service Entry';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
            AutoIncrement = true;
        }
        field(2; "Patient No."; Code[20])
        {
            Caption = 'Patient No.';
            DataClassification = CustomerContent;
            TableRelation = Patient."No.";
        }
        field(3; "Facility No."; Code[20])
        {
            Caption = 'Facility No.';
            DataClassification = CustomerContent;
            TableRelation = "Health Facility"."No.";
        }
        field(4; "Service Date"; Date)
        {
            Caption = 'Service Date';
            DataClassification = CustomerContent;
        }
        field(5; "Service Type"; Enum "Health Service Type")
        {
            Caption = 'Service Type';
            DataClassification = CustomerContent;
        }
        field(6; Diagnosis; Text[250])
        {
            Caption = 'Diagnosis';
            DataClassification = CustomerContent;
        }
        field(7; Treatment; Text[250])
        {
            Caption = 'Treatment';
            DataClassification = CustomerContent;
        }
        field(8; "Attending Clinician"; Text[100])
        {
            Caption = 'Attending Clinician';
            DataClassification = CustomerContent;
        }
        field(9; Notes; Text[500])
        {
            Caption = 'Notes';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Patient; "Patient No.", "Service Date") { }
        key(Facility; "Facility No.", "Service Date") { }
    }
}
