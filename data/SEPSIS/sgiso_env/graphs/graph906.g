v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 IVLiquid
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVAntibiotics
e 6 7  IVLiquid__Leucocytes
e 5 6  IVAntibiotics__IVLiquid
e 8 9  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 9 10  LacticAcid__AdmissionNC
e 11 12  Leucocytes__CRP
e 13 14  ReleaseA__END
e 12 13  CRP__ReleaseA

