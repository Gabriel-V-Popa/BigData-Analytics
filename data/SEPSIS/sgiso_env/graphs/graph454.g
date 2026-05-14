v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 AdmissionNC
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 ReturnER
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 9 10  AdmissionNC__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__AdmissionNC
e 12 13  AdmissionNC__CRP
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__ReturnER
e 17 18  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes

