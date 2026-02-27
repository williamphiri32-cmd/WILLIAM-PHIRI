table 50100 "Health Facility"
{
    Caption = 'Health Facility';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Facility Type"; Enum "Health Facility Type")
        {
            Caption = 'Facility Type';
            DataClassification = CustomerContent;
        }
        field(4; District; Text[50])
        {
            Caption = 'District';
            DataClassification = CustomerContent;
        }
        field(5; Region; Text[50])
        {
            Caption = 'Region';
            DataClassification = CustomerContent;
        }
        field(6; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }
        field(7; Email; Text[80])
        {
            Caption = 'Email';
            DataClassification = CustomerContent;
        }
        field(8; Active; Boolean)
        {
            Caption = 'Active';
            DataClassification = CustomerContent;
            InitValue = true;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Name; Name) { }
    }
}
