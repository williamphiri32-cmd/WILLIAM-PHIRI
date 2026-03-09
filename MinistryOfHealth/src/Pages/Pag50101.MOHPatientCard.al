page 50101 "MOH Patient Card"
{
    ApplicationArea = All;
    Caption = 'Patient Card';
    PageType = Card;
    SourceTable = "MOH Patient";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
                field("National ID"; Rec."National ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the national ID of the patient.';
                }
                field("Blood Type"; Rec."Blood Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the blood type of the patient.';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date the patient was registered.';
                }
            }
            group(Contact)
            {
                Caption = 'Contact';

                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the phone number of the patient.';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address of the patient.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the city where the patient lives.';
                }
                field("Health Facility Code"; Rec."Health Facility Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the patient is registered.';
                }
            }
        }

        area(FactBoxes)
        {
            systempart(Control1; Notes)
            {
                ApplicationArea = Notes;
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
