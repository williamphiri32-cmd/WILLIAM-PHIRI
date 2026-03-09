page 50100 "MOH Patient List"
{
    ApplicationArea = All;
    Caption = 'Patients';
    CardPageId = "MOH Patient Card";
    PageType = List;
    SourceTable = "MOH Patient";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient number.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the first name of the patient.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the last name of the patient.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date of birth of the patient.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the gender of the patient.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the phone number of the patient.';
                }
                field("Health Facility Code"; Rec."Health Facility Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the patient is registered.';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date the patient was registered.';
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(MedicalRecords)
            {
                ApplicationArea = All;
                Caption = 'Medical Records';
                Image = History;
                RunObject = page "MOH Medical Records";
                RunPageLink = "Patient No." = field("No.");
                ToolTip = 'View the medical records of the patient.';
            }
        }
    }
}
