v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 LacticAcid
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__CRP
e 8 9  CRP__IVAntibiotics
e 11 12  AdmissionNC__Leucocytes
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 15 16  ReleaseA__END
e 13 14  Leucocytes__CRP
e 14 15  CRP__ReleaseA

