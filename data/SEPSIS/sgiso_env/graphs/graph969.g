v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 AdmissionNC
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 Leucocytes
v 18 Leucocytes
v 19 CRP
v 20 ReleaseD
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 11 12  Leucocytes__AdmissionNC
e 12 13  AdmissionNC__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 20 21  ReleaseD__END
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__ReleaseD

