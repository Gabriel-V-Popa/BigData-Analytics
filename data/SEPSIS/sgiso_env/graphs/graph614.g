v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 ReleaseA
v 15 ReturnER
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 14 15  ReleaseA__ReturnER
e 15 16  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVAntibiotics
e 9 10  IVLiquid__AdmissionNC
e 8 9  IVAntibiotics__IVLiquid
e 10 11  AdmissionNC__AdmissionNC
e 13 14  CRP__ReleaseA
e 11 12  AdmissionNC__Leucocytes
e 12 13  Leucocytes__CRP

