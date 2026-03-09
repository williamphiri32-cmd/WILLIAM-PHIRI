page 50105 "MOH Staff Card"
{
    ApplicationArea = All;
    Caption = 'Health Staff Card';
    PageType = Card;
    SourceTable = "MOH Staff";

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
                    ToolTip = 'Specifies the staff number.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the first name of the staff member.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the last name of the staff member.';
                }
                field("Job Title"; Rec."Job Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the job title of the staff member.';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the department of the staff member.';
                }
                field("License No."; Rec."License No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the professional license number of the staff member.';
                }
                field("Employment Date"; Rec."Employment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the employment start date of the staff member.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the staff member is currently active.';
                }
            }
            group(Contact)
            {
                Caption = 'Contact';

                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the phone number of the staff member.';
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email address of the staff member.';
                }
                field("Health Facility Code"; Rec."Health Facility Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the staff member works.';
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
}
