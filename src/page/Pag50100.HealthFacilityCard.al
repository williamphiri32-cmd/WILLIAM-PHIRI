page 50100 "Health Facility Card"
{
    Caption = 'Health Facility Card';
    PageType = Card;
    SourceTable = "Health Facility";
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
                    ToolTip = 'Specifies the unique identifier of the health facility.';
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
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the health facility is currently active.';
                }
            }
            group(Location)
            {
                Caption = 'Location';

                field(District; Rec.District)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the district where the health facility is located.';
                }
                field(Region; Rec.Region)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the region where the health facility is located.';
                }
            }
            group(Contact)
            {
                Caption = 'Contact';

                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the phone number of the health facility.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email address of the health facility.';
                }
            }
        }
    }
}
