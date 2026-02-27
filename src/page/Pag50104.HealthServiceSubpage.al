page 50104 "Health Service Subpage"
{
    Caption = 'Health Service Entries';
    PageType = ListPart;
    SourceTable = "Health Service Entry";
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
                field("Service Date"; Rec."Service Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date the health service was rendered.';
                }
                field("Facility No."; Rec."Facility No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the service was rendered.';
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
                field(Treatment; Rec.Treatment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the treatment given during this visit.';
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
