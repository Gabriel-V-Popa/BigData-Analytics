v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 IVLiquid
v 5 ERSepsisTriage
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__IVLiquid
e 5 6  ERSepsisTriage__CRP
e 4 5  IVLiquid__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 13 14  ReleaseA__END
e 11 12  Leucocytes__CRP
e 12 13  CRP__ReleaseA

