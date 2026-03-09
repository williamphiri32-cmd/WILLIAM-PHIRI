page 50103 "MOH Health Facility Card"
{
    ApplicationArea = All;
    Caption = 'Health Facility Card';
    PageType = Card;
    SourceTable = "MOH Health Facility";

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
                    ToolTip = 'Specifies the facility number.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the health facility.';
                }
                field("Facility Type"; Rec."Facility Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of health facility.';
                }
                field("Capacity (Beds)"; Rec."Capacity (Beds)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of beds available at the facility.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the facility is currently active.';
                }
            }
            group(Location)
            {
                Caption = 'Location';

                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address of the facility.';
                }
                field(District; Rec.District)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the district where the facility is located.';
                }
                field(Province; Rec.Province)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the province where the facility is located.';
                }
            }
            group(Contact)
            {
                Caption = 'Contact';

                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the phone number of the facility.';
                }
                field("Email Address"; Rec."Email Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email address of the facility.';
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
