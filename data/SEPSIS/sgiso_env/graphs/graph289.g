v 1 START
v 2 ERRegistration
v 3 LacticAcid
v 4 Leucocytes
v 5 CRP
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 2 3  ERRegistration__LacticAcid
e 4 5  Leucocytes__CRP
e 3 4  LacticAcid__Leucocytes
e 5 6  CRP__ERTriage
e 6 7  ERTriage__ERSepsisTriage
e 7 8  ERSepsisTriage__IVAntibiotics
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionNC
e 10 11  AdmissionNC__CRP

