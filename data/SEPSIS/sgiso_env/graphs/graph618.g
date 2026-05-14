v 1 START
v 2 Leucocytes
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVLiquid
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 IVAntibiotics
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 ReleaseA
v 15 ReturnER
v 16 END
e 3 4  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 14 15  ReleaseA__ReturnER
e 15 16  ReturnER__END
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__Leucocytes
e 2 3  Leucocytes__ERRegistration
e 5 6  ERSepsisTriage__IVLiquid
e 6 7  IVLiquid__Leucocytes
e 8 9  CRP__LacticAcid
e 11 12  AdmissionNC__Leucocytes
e 9 10  LacticAcid__IVAntibiotics
e 10 11  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__CRP
e 13 14  CRP__ReleaseA

