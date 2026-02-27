page 50105 "Health Service List"
{
    Caption = 'Health Service Entries';
    PageType = List;
    SourceTable = "Health Service Entry";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry number of the health service record.';
                }
                field("Patient No."; Rec."Patient No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient for whom the service was rendered.';
                }
                field("Facility No."; Rec."Facility No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the service was rendered.';
                }
                field("Service Date"; Rec."Service Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date the health service was rendered.';
                }
                field("Service Type"; Rec."Service Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of health service rendered.';
                }
                field(Diagnosis; Rec.Diagnosis)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the diagnosis recorded for this visit.';
                }
                field("Attending Clinician"; Rec."Attending Clinician")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the attending clinician.';
                }
            }
        }
    }
}
