v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 LacticAcid
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVAntibiotics
e 9 10  AdmissionNC__LacticAcid
e 11 12  ReleaseA__END
e 10 11  LacticAcid__ReleaseA

