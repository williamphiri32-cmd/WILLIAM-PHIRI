page 50103 "Patient List"
{
    Caption = 'Patients';
    PageType = List;
    SourceTable = Patient;
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = "Patient Card";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unique patient identifier.';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s full name.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s date of birth.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s gender.';
                }
                field(District; Rec.District)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s district of residence.';
                }
                field("Facility No."; Rec."Facility No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the patient is registered.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NewPatient)
            {
                Caption = 'New Patient';
                ApplicationArea = All;
                Image = New;
                RunObject = page "Patient Card";
                RunPageMode = Create;
                ToolTip = 'Register a new patient.';
            }
        }
    }
}
