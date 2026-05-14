v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 ReleaseA
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVAntibiotics
e 5 6  IVAntibiotics__Leucocytes
e 7 8  CRP__LacticAcid
e 9 10  AdmissionNC__Leucocytes
e 8 9  LacticAcid__AdmissionNC
e 10 11  Leucocytes__CRP
e 12 13  ReleaseA__END
e 11 12  CRP__ReleaseA

