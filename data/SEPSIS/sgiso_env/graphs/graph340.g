v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 AdmissionNC
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  AdmissionNC__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__AdmissionNC
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 7 8  CRP__IVAntibiotics
e 12 13  AdmissionNC__Leucocytes
e 16 17  ReleaseA__END
e 13 14  Leucocytes__CRP
e 14 15  CRP__CRP
e 15 16  CRP__ReleaseA

