v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 AdmissionNC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 ReleaseA
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  IVAntibiotics__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__CRP
e 12 13  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 9 10  CRP__AdmissionNC
e 11 12  LacticAcid__Leucocytes
e 10 11  AdmissionNC__LacticAcid
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 18 19  ReleaseA__END
e 16 17  Leucocytes__CRP
e 17 18  CRP__ReleaseA

