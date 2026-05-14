v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__IVLiquid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVAntibiotics
e 9 10  IVLiquid__AdmissionNC
e 10 11  AdmissionNC__CRP

