v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 CRP
v 7 Leucocytes
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 ReleaseD
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVLiquid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 7 8  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 8 9  LacticAcid__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 21 22  ReleaseD__END
e 19 20  Leucocytes__CRP
e 20 21  CRP__ReleaseD

