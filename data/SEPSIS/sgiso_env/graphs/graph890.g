v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 LacticAcid
v 11 IVLiquid
v 12 IVAntibiotics
v 13 AdmissionNC
v 14 CRP
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__CRP
e 12 13  IVAntibiotics__AdmissionNC
e 9 10  CRP__LacticAcid
e 10 11  LacticAcid__IVLiquid
e 11 12  IVLiquid__IVAntibiotics
e 13 14  AdmissionNC__CRP
e 15 16  ReleaseA__END
e 14 15  CRP__ReleaseA

