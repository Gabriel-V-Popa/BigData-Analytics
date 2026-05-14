v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 AdmissionNC
v 10 ReleaseB
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  IVAntibiotics__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 9 11  AdmissionNC__END
e 10 11  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVAntibiotics
e 7 8  Leucocytes__CRP
e 8 9  CRP__AdmissionNC
e 8 10  CRP__ReleaseB

