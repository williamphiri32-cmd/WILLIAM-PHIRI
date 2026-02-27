table 50101 "Patient"
{
    Caption = 'Patient';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(4; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = CustomerContent;
        }
        field(5; Gender; Enum "Patient Gender")
        {
            Caption = 'Gender';
            DataClassification = CustomerContent;
        }
        field(6; "National ID No."; Text[20])
        {
            Caption = 'National ID No.';
            DataClassification = CustomerContent;
        }
        field(7; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }
        field(8; Address; Text[100])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(9; District; Text[50])
        {
            Caption = 'District';
            DataClassification = CustomerContent;
        }
        field(10; "Facility No."; Code[20])
        {
            Caption = 'Facility No.';
            DataClassification = CustomerContent;
            TableRelation = "Health Facility"."No.";
        }
        field(11; "Full Name"; Text[101])
        {
            Caption = 'Full Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Name; "Last Name", "First Name") { }
        key(Facility; "Facility No.") { }
    }

    local procedure UpdateFullName()
    begin
        "Full Name" := CopyStr("First Name" + ' ' + "Last Name", 1, MaxStrLen("Full Name"));
    end;
}
