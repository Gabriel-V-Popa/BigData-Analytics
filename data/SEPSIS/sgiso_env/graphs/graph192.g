v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 LacticAcid
v 9 CRP
v 10 AdmissionNC
v 11 Leucocytes
v 12 Leucocytes
v 13 CRP
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  IVAntibiotics__Leucocytes
e 5 6  IVLiquid__IVAntibiotics
e 7 8  Leucocytes__LacticAcid
e 8 9  LacticAcid__CRP
e 9 10  CRP__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 11 12  Leucocytes__Leucocytes
e 14 15  ReleaseA__END
e 12 13  Leucocytes__CRP
e 13 14  CRP__ReleaseA

