page 50102 "MOH Health Facility List"
{
    ApplicationArea = All;
    Caption = 'Health Facilities';
    CardPageId = "MOH Health Facility Card";
    PageType = List;
    SourceTable = "MOH Health Facility";
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
        }
    }
}
