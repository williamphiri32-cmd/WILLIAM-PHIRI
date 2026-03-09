codeunit 50100 "MOH No. Series Mgt."
{
    procedure GetNextPatientNo(): Code[20]
    var
        MOHSetup: Record "MOH Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        MOHSetup.Get();
        MOHSetup.TestField("Patient Nos.");
        exit(NoSeriesMgt.GetNextNo(MOHSetup."Patient Nos.", Today(), true));
    end;

    procedure GetNextHealthFacilityNo(): Code[20]
    var
        MOHSetup: Record "MOH Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        MOHSetup.Get();
        MOHSetup.TestField("Health Facility Nos.");
        exit(NoSeriesMgt.GetNextNo(MOHSetup."Health Facility Nos.", Today(), true));
    end;

    procedure GetNextStaffNo(): Code[20]
    var
        MOHSetup: Record "MOH Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        MOHSetup.Get();
        MOHSetup.TestField("Staff Nos.");
        exit(NoSeriesMgt.GetNextNo(MOHSetup."Staff Nos.", Today(), true));
    end;
}
