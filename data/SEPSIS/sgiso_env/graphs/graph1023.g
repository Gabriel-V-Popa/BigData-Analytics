v 1 START
v 2 ERSepsisTriage
v 3 ERRegistration
v 4 ERTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 AdmissionNC
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 ReleaseA
v 19 END
e 3 4  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 15 16  CRP__Leucocytes
e 1 2  START__ERSepsisTriage
e 2 3  ERSepsisTriage__ERRegistration
e 4 5  ERTriage__IVLiquid
e 6 7  IVAntibiotics__CRP
e 5 6  IVLiquid__IVAntibiotics
e 8 9  Leucocytes__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 13 14  AdmissionNC__Leucocytes
e 14 15  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 18 19  ReleaseA__END
e 17 18  CRP__ReleaseA

