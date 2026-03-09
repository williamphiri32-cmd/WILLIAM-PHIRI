page 50107 "MOH Role Centre"
{
    ApplicationArea = All;
    Caption = 'Ministry of Health';
    PageType = RoleCenter;
    UsageCategory = None;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Business Manager")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(Patients)
            {
                Caption = 'Patients';
                Image = Person;

                action(PatientList)
                {
                    ApplicationArea = All;
                    Caption = 'Patients';
                    RunObject = page "MOH Patient List";
                    ToolTip = 'View and manage patient records.';
                }
                action(MedicalRecords)
                {
                    ApplicationArea = All;
                    Caption = 'Medical Records';
                    RunObject = page "MOH Medical Records";
                    ToolTip = 'View and manage medical records.';
                }
            }
            group(Facilities)
            {
                Caption = 'Health Facilities';
                Image = Company;

                action(HealthFacilities)
                {
                    ApplicationArea = All;
                    Caption = 'Health Facilities';
                    RunObject = page "MOH Health Facility List";
                    ToolTip = 'View and manage health facilities.';
                }
                action(StaffList)
                {
                    ApplicationArea = All;
                    Caption = 'Health Staff';
                    RunObject = page "MOH Staff List";
                    ToolTip = 'View and manage health staff.';
                }
            }
        }
    }
}
