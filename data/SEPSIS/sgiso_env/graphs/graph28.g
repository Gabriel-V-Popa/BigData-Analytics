v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 7 8  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 6 7  IVAntibiotics__LacticAcid

