v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 IVLiquid
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 AdmissionNC
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 ReturnER
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 13 14  AdmissionNC__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__ReturnER
e 17 18  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVAntibiotics
e 6 7  IVLiquid__Leucocytes
e 5 6  IVAntibiotics__IVLiquid
e 7 8  Leucocytes__CRP
e 9 10  LacticAcid__AdmissionNC
e 8 9  CRP__LacticAcid

