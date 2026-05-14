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
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 AdmissionNC
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 Leucocytes
v 22 Leucocytes
v 23 CRP
v 24 ReleaseD
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 8 9  Leucocytes__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 11 12  Leucocytes__CRP
e 16 17  CRP__AdmissionNC
e 17 18  AdmissionNC__Leucocytes
e 19 20  CRP__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__Leucocytes
e 24 25  ReleaseD__END
e 22 23  Leucocytes__CRP
e 23 24  CRP__ReleaseD

