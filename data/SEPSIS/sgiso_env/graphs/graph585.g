v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVAntibiotics
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 CRP
v 12 ReleaseA
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 3 4  IVLiquid__ERTriage
e 7 8  LacticAcid__CRP
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__IVAntibiotics
e 6 7  IVAntibiotics__LacticAcid
e 10 11  AdmissionNC__CRP
e 12 13  ReleaseA__END
e 11 12  CRP__ReleaseA

