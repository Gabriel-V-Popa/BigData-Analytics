v 1 START
v 2 ERRegistration
v 3 ERSepsisTriage
v 4 IVLiquid
v 5 IVAntibiotics
v 6 ERTriage
v 7 Leucocytes
v 8 LacticAcid
v 9 CRP
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERSepsisTriage
e 3 4  ERSepsisTriage__IVLiquid
e 4 5  IVLiquid__IVAntibiotics
e 8 9  LacticAcid__CRP
e 5 6  IVAntibiotics__ERTriage
e 6 7  ERTriage__Leucocytes
e 7 8  Leucocytes__LacticAcid
e 9 10  CRP__AdmissionNC
e 11 12  AdmissionNC__Leucocytes
e 10 11  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__CRP
e 14 15  ReleaseA__END
e 13 14  CRP__ReleaseA

