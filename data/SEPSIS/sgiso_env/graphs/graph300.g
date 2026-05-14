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
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 CRP
v 17 Leucocytes
v 18 Leucocytes
v 19 ReleaseA
v 20 ReturnER
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 12 13  CRP__Leucocytes
e 19 20  ReleaseA__ReturnER
e 20 21  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVAntibiotics
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionNC
e 11 12  Leucocytes__CRP
e 10 11  AdmissionNC__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__Leucocytes
e 18 19  Leucocytes__ReleaseA

