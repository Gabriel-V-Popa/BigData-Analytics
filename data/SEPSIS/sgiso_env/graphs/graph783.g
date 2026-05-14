v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 ReleaseA
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 8 9  Leucocytes__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 14 15  Leucocytes__Leucocytes
e 18 19  ReleaseA__END
e 15 16  Leucocytes__CRP
e 16 17  CRP__CRP
e 17 18  CRP__ReleaseA

