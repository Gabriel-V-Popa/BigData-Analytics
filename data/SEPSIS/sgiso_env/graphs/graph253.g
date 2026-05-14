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
v 11 CRP
v 12 Leucocytes
v 13 AdmissionNC
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 ReleaseA
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 13 14  AdmissionNC__CRP
e 14 15  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 15 16  Leucocytes__Leucocytes
e 19 20  ReleaseA__END
e 16 17  Leucocytes__CRP
e 17 18  CRP__CRP
e 18 19  CRP__ReleaseA

