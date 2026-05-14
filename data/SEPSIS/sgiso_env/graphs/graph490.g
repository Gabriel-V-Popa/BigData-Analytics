v 1 START
v 2 CRP
v 3 LacticAcid
v 4 Leucocytes
v 5 ERRegistration
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 ReleaseC
v 20 END
e 5 6  ERRegistration__ERTriage
e 11 12  Leucocytes__CRP
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 6 7  ERTriage__ERSepsisTriage
e 1 2  START__CRP
e 4 5  Leucocytes__ERRegistration
e 2 3  CRP__LacticAcid
e 3 4  LacticAcid__Leucocytes
e 7 8  ERSepsisTriage__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 19 20  ReleaseC__END
e 17 18  Leucocytes__CRP
e 18 19  CRP__ReleaseC

