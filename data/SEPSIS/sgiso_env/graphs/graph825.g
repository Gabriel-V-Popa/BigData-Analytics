v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 AdmissionNC
v 8 ERSepsisTriage
v 9 IVLiquid
v 10 IVAntibiotics
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 7 8  AdmissionNC__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__AdmissionNC
e 8 9  ERSepsisTriage__IVLiquid
e 11 12  AdmissionNC__Leucocytes
e 9 10  IVLiquid__IVAntibiotics
e 10 11  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__CRP
e 14 15  ReleaseA__END
e 13 14  CRP__ReleaseA

