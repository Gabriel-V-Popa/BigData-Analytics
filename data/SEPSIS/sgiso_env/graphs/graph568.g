v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 AdmissionNC
v 13 LacticAcid
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 CRP
v 18 ReleaseA
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 7 8  CRP__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 11 12  LacticAcid__AdmissionNC
e 13 14  LacticAcid__Leucocytes
e 12 13  AdmissionNC__LacticAcid
e 14 15  Leucocytes__CRP
e 18 19  ReleaseA__END
e 15 16  CRP__LacticAcid
e 16 17  LacticAcid__CRP
e 17 18  CRP__ReleaseA

