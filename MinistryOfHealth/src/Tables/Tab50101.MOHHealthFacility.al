table 50101 "MOH Health Facility"
{
    Caption = 'Health Facility';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "Facility Type"; Enum "MOH Facility Type")
        {
            Caption = 'Facility Type';
        }
        field(4; District; Text[50])
        {
            Caption = 'District';
        }
        field(5; Province; Text[50])
        {
            Caption = 'Province';
        }
        field(6; Address; Text[100])
        {
            Caption = 'Address';
        }
        field(7; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(8; "Email Address"; Text[80])
        {
            Caption = 'Email Address';
        }
        field(9; "Capacity (Beds)"; Integer)
        {
            Caption = 'Capacity (Beds)';
            MinValue = 0;
        }
        field(10; Active; Boolean)
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
        key(Key2; District, Province) { }
    }

    trigger OnInsert()
    var
        MOHNoSeriesMgt: Codeunit "MOH No. Series Mgt.";
    begin
        if "No." = '' then
            "No." := MOHNoSeriesMgt.GetNextHealthFacilityNo();
    end;
}
