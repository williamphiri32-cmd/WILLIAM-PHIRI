table 50104 "MOH Setup"
{
    Caption = 'Ministry of Health Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Patient Nos."; Code[20])
        {
            Caption = 'Patient Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Health Facility Nos."; Code[20])
        {
            Caption = 'Health Facility Nos.';
            TableRelation = "No. Series";
        }
        field(4; "Staff Nos."; Code[20])
        {
            Caption = 'Staff Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
