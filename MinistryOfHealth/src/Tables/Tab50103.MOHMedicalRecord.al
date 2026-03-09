table 50103 "MOH Medical Record"
{
    Caption = 'Medical Record';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Patient No."; Code[20])
        {
            Caption = 'Patient No.';
            TableRelation = "MOH Patient"."No.";
        }
        field(3; "Visit Date"; Date)
        {
            Caption = 'Visit Date';
        }
        field(4; Diagnosis; Text[250])
        {
            Caption = 'Diagnosis';
        }
        field(5; Treatment; Text[250])
        {
            Caption = 'Treatment';
        }
        field(6; "Attending Staff No."; Code[20])
        {
            Caption = 'Attending Staff No.';
            TableRelation = "MOH Staff"."No.";
        }
        field(7; "Health Facility Code"; Code[20])
        {
            Caption = 'Health Facility Code';
            TableRelation = "MOH Health Facility"."No.";
        }
        field(8; Notes; Text[500])
        {
            Caption = 'Notes';
        }
        field(9; "Follow-Up Date"; Date)
        {
            Caption = 'Follow-Up Date';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Patient No.", "Visit Date") { }
        key(Key3; "Health Facility Code", "Visit Date") { }
    }

    trigger OnInsert()
    begin
        if "Visit Date" = 0D then
            "Visit Date" := Today();
    end;
}
