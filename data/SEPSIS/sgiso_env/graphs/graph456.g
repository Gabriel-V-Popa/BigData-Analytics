v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 Leucocytes
v 7 LacticAcid
v 8 CRP
v 9 AdmissionNC
v 10 CRP
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  AdmissionNC__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVAntibiotics
e 5 6  IVAntibiotics__Leucocytes
e 6 7  Leucocytes__LacticAcid
e 8 9  CRP__AdmissionNC
e 7 8  LacticAcid__CRP
e 10 11  CRP__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__END

