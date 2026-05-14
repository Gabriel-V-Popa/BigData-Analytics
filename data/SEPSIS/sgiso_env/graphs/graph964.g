v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 ReleaseA
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 12 13  LacticAcid__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  LacticAcid__Leucocytes
e 5 6  IVLiquid__LacticAcid
e 7 8  Leucocytes__CRP
e 8 9  CRP__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  CRP__LacticAcid
e 10 11  AdmissionNC__CRP
e 13 14  Leucocytes__Leucocytes
e 18 19  ReleaseA__END
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__LacticAcid
e 17 18  LacticAcid__ReleaseA

