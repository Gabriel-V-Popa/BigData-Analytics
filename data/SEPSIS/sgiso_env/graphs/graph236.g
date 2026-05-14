v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 ERSepsisTriage
v 7 IVAntibiotics
v 8 AdmissionNC
v 9 LacticAcid
v 10 AdmissionNC
v 11 ReleaseB
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 10 12  AdmissionNC__END
e 11 12  ReleaseB__END
e 9 10  LacticAcid__AdmissionNC
e 9 11  LacticAcid__ReleaseB
e 5 6  Leucocytes__ERSepsisTriage
e 6 7  ERSepsisTriage__IVAntibiotics
e 7 8  IVAntibiotics__AdmissionNC
e 8 9  AdmissionNC__LacticAcid

