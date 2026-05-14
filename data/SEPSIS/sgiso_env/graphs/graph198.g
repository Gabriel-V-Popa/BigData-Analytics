v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 ERTriage
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 3 4  IVLiquid__ERSepsisTriage
e 7 8  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVAntibiotics
e 5 6  IVAntibiotics__ERTriage
e 6 7  ERTriage__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 12 13  CRP__ReleaseA
e 11 12  Leucocytes__CRP

