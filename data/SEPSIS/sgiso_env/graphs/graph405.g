v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 CRP
v 13 Leucocytes
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 10 11  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVAntibiotics
e 9 10  AdmissionNC__Leucocytes
e 8 9  IVAntibiotics__AdmissionNC
e 11 12  CRP__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__ReleaseA
e 14 15  ReleaseA__END

