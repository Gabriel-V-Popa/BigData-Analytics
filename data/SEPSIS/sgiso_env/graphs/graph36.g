v 1 START
v 2 ERRegistration
v 3 ERSepsisTriage
v 4 IVAntibiotics
v 5 ERTriage
v 6 Leucocytes
v 7 LacticAcid
v 8 CRP
v 9 AdmissionNC
v 10 AdmissionNC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 ReleaseA
v 15 ReturnER
v 16 END
e 1 2  START__ERRegistration
e 13 14  Leucocytes__ReleaseA
e 14 15  ReleaseA__ReturnER
e 15 16  ReturnER__END
e 2 3  ERRegistration__ERSepsisTriage
e 3 4  ERSepsisTriage__IVAntibiotics
e 5 6  ERTriage__Leucocytes
e 4 5  IVAntibiotics__ERTriage
e 6 7  Leucocytes__LacticAcid
e 8 9  CRP__AdmissionNC
e 7 8  LacticAcid__CRP
e 9 10  AdmissionNC__AdmissionNC
e 10 11  AdmissionNC__CRP
e 11 12  CRP__LacticAcid
e 12 13  LacticAcid__Leucocytes

