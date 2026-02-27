page 50101 "Health Facility List"
{
    Caption = 'Health Facilities';
    PageType = List;
    SourceTable = "Health Facility";
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = "Health Facility Card";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
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
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the health facility is currently active.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NewFacility)
            {
                Caption = 'New Facility';
                ApplicationArea = All;
                Image = New;
                RunObject = page "Health Facility Card";
                RunPageMode = Create;
                ToolTip = 'Create a new health facility record.';
            }
        }
    }
}
