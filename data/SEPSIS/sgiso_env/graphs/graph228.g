v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 IVLiquid
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 LacticAcid
v 13 CRP
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 7 8  IVLiquid__ERSepsisTriage
e 8 9  ERSepsisTriage__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 14 15  ReleaseA__END
e 11 12  CRP__LacticAcid
e 12 13  LacticAcid__CRP
e 13 14  CRP__ReleaseA

