v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 CRP
v 7 Leucocytes
v 8 LacticAcid
v 9 AdmissionNC
v 10 ReleaseA
v 11 ReturnER
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 9 10  AdmissionNC__ReleaseA
e 10 11  ReleaseA__ReturnER
e 11 12  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVAntibiotics
e 7 8  Leucocytes__LacticAcid
e 8 9  LacticAcid__AdmissionNC

