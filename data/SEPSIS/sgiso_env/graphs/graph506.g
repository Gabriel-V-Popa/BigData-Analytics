v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVAntibiotics
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 ReleaseA
v 16 ReturnER
v 17 END
e 3 4  ERRegistration__ERTriage
e 6 7  IVAntibiotics__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 12 13  CRP__Leucocytes
e 15 16  ReleaseA__ReturnER
e 16 17  ReturnER__END
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__IVAntibiotics
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 8 9  Leucocytes__CRP
e 9 10  CRP__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__CRP
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__ReleaseA

