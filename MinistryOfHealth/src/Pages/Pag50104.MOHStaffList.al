page 50104 "MOH Staff List"
{
    ApplicationArea = All;
    Caption = 'Health Staff';
    CardPageId = "MOH Staff Card";
    PageType = List;
    SourceTable = "MOH Staff";
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
                field("Health Facility Code"; Rec."Health Facility Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the staff member works.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the staff member is currently active.';
                }
            }
        }
    }
}
