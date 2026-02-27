page 50102 "Patient Card"
{
    Caption = 'Patient Card';
    PageType = Card;
    SourceTable = Patient;
    UsageCategory = Documents;
    ApplicationArea = All;

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
                    ToolTip = 'Specifies the unique patient identifier.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s first name.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s last name.';
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
                field("National ID No."; Rec."National ID No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s national identification number.';
                }
            }
            group(Contact)
            {
                Caption = 'Contact & Address';

                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s phone number.';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s residential address.';
                }
                field(District; Rec.District)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient''s district of residence.';
                }
            }
            group(Registration)
            {
                Caption = 'Registration';

                field("Facility No."; Rec."Facility No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the patient is registered.';
                }
            }
        }
        area(FactBoxes)
        {
            part(ServiceHistory; "Health Service Subpage")
            {
                ApplicationArea = All;
                Caption = 'Service History';
                SubPageLink = "Patient No." = field("No.");
            }
        }
    }
}
