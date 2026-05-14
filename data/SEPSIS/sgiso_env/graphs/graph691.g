v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 ReleaseD
v 16 ReturnER
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 15 16  ReleaseD__ReturnER
e 16 17  ReturnER__END
e 4 5  CRP__Leucocytes
e 6 7  LacticAcid__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 7 8  ERSepsisTriage__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVAntibiotics__AdmissionNC
e 9 10  AdmissionNC__AdmissionNC
e 13 14  Leucocytes__CRP
e 14 15  CRP__ReleaseD

