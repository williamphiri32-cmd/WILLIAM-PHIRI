table 50102 "MOH Staff"
{
    Caption = 'Health Staff';
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
        field(4; "Job Title"; Text[100])
        {
            Caption = 'Job Title';
        }
        field(5; Department; Enum "MOH Department")
        {
            Caption = 'Department';
        }
        field(6; "Health Facility Code"; Code[20])
        {
            Caption = 'Health Facility Code';
            TableRelation = "MOH Health Facility"."No.";
        }
        field(7; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(8; "Email Address"; Text[80])
        {
            Caption = 'Email Address';
        }
        field(9; "Employment Date"; Date)
        {
            Caption = 'Employment Date';
        }
        field(10; "License No."; Code[30])
        {
            Caption = 'License No.';
        }
        field(11; Active; Boolean)
        {
            Caption = 'Active';
            InitValue = true;
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
            "No." := MOHNoSeriesMgt.GetNextStaffNo();
    end;
}
