page 50106 "MOH Medical Records"
{
    ApplicationArea = All;
    Caption = 'Medical Records';
    PageType = List;
    SourceTable = "MOH Medical Record";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry number of the medical record.';
                }
                field("Patient No."; Rec."Patient No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the patient number.';
                }
                field("Visit Date"; Rec."Visit Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date of the visit.';
                }
                field(Diagnosis; Rec.Diagnosis)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the diagnosis given during the visit.';
                }
                field(Treatment; Rec.Treatment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the treatment provided during the visit.';
                }
                field("Attending Staff No."; Rec."Attending Staff No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the staff member who attended the patient.';
                }
                field("Health Facility Code"; Rec."Health Facility Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the health facility where the visit took place.';
                }
                field("Follow-Up Date"; Rec."Follow-Up Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the follow-up date for the patient.';
                }
            }
        }
    }
}
