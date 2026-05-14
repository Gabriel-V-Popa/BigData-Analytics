v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 ERSepsisTriage
v 10 IVLiquid
v 11 IVAntibiotics
v 12 AdmissionNC
v 13 CRP
v 14 ReleaseA
v 15 END
e 4 5  ERRegistration__ERTriage
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 5 6  ERTriage__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__LacticAcid
e 8 9  LacticAcid__ERSepsisTriage
e 9 10  ERSepsisTriage__IVLiquid
e 11 12  IVAntibiotics__AdmissionNC
e 10 11  IVLiquid__IVAntibiotics
e 12 13  AdmissionNC__CRP
e 14 15  ReleaseA__END
e 13 14  CRP__ReleaseA

