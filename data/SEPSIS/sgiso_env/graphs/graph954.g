v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 ReleaseA
v 13 ReturnER
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  Leucocytes__AdmissionNC
e 12 13  ReleaseA__ReturnER
e 13 14  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 9 10  AdmissionNC__Leucocytes
e 11 12  CRP__ReleaseA
e 10 11  Leucocytes__CRP

