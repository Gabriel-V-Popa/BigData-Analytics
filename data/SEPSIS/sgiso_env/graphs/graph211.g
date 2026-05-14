v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 AdmissionNC
v 10 ReleaseA
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVAntibiotics
e 5 6  IVAntibiotics__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  LacticAcid__AdmissionNC
e 7 8  CRP__LacticAcid
e 9 10  AdmissionNC__ReleaseA
e 10 11  ReleaseA__END

