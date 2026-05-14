v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 AdmissionNC
v 9 IVLiquid
v 10 IVAntibiotics
v 11 CRP
v 12 ReleaseA
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 8 9  AdmissionNC__IVLiquid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__AdmissionNC
e 9 10  IVLiquid__IVAntibiotics
e 10 11  IVAntibiotics__CRP
e 11 12  CRP__ReleaseA
e 12 13  ReleaseA__END

