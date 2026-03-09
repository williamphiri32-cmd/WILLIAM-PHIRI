page 50108 "MOH Setup"
{
    ApplicationArea = All;
    Caption = 'Ministry of Health Setup';
    PageType = Card;
    SourceTable = "MOH Setup";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Number Series';

                field("Patient Nos."; Rec."Patient Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the number series used to assign numbers to patients.';
                }
                field("Health Facility Nos."; Rec."Health Facility Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the number series used to assign numbers to health facilities.';
                }
                field("Staff Nos."; Rec."Staff Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the number series used to assign numbers to health staff.';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
