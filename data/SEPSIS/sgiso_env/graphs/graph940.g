v 1 START
v 2 ERRegistration
v 3 CRP
v 4 Leucocytes
v 5 LacticAcid
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 ReleaseA
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__CRP
e 3 4  CRP__Leucocytes
e 4 5  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__AdmissionNC
e 5 6  LacticAcid__ERTriage
e 6 7  ERTriage__ERSepsisTriage
e 7 8  ERSepsisTriage__IVAntibiotics
e 9 10  AdmissionNC__ReleaseA
e 10 11  ReleaseA__END

