v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 12 13  CRP__Leucocytes
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERSepsisTriage
e 8 9  IVAntibiotics__IVLiquid
e 7 8  ERSepsisTriage__IVAntibiotics
e 9 10  IVLiquid__AdmissionNC
e 11 12  Leucocytes__CRP
e 10 11  AdmissionNC__Leucocytes
e 13 14  Leucocytes__CRP
e 15 16  ReleaseA__END
e 14 15  CRP__ReleaseA

