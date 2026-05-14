v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 CRP
v 5 LacticAcid
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 6 7  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__ERTriage
e 7 8  ERSepsisTriage__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionNC
e 11 12  Leucocytes__CRP
e 13 14  ReleaseA__END
e 12 13  CRP__ReleaseA

