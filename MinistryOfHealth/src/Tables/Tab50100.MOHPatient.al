table 50100 "MOH Patient"
{
    Caption = 'Patient';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
        }
        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
        }
        field(4; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
        field(5; Gender; Enum "MOH Gender")
        {
            Caption = 'Gender';
        }
        field(6; "National ID"; Code[20])
        {
            Caption = 'National ID';
        }
        field(7; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(8; Address; Text[100])
        {
            Caption = 'Address';
        }
        field(9; City; Text[50])
        {
            Caption = 'City';
        }
        field(10; "Blood Type"; Enum "MOH Blood Type")
        {
            Caption = 'Blood Type';
        }
        field(11; "Registration Date"; Date)
        {
            Caption = 'Registration Date';
        }
        field(12; "Health Facility Code"; Code[20])
        {
            Caption = 'Health Facility Code';
            TableRelation = "MOH Health Facility"."No.";
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Last Name", "First Name") { }
        key(Key3; "Health Facility Code") { }
    }

    trigger OnInsert()
    var
        MOHNoSeriesMgt: Codeunit "MOH No. Series Mgt.";
    begin
        if "No." = '' then
            "No." := MOHNoSeriesMgt.GetNextPatientNo();
        if "Registration Date" = 0D then
            "Registration Date" := Today();
    end;
}
