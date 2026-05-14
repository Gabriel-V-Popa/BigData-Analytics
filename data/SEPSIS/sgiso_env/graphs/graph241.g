v 1 START
v 2 Leucocytes
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 ReleaseA
v 14 END
e 3 4  ERRegistration__ERTriage
e 1 2  START__Leucocytes
e 2 3  Leucocytes__ERRegistration
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__CRP
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  ReleaseA__END
e 11 12  AdmissionNC__Leucocytes
e 12 13  Leucocytes__ReleaseA

