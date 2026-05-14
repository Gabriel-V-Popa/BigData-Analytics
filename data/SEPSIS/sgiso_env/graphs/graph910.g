v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 AdmissionNC
v 13 Leucocytes
v 14 Leucocytes
v 15 Leucocytes
v 16 Leucocytes
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 11 12  Leucocytes__AdmissionNC
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 4 5  CRP__Leucocytes
e 6 7  LacticAcid__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 7 8  ERSepsisTriage__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  AdmissionNC__Leucocytes
e 16 17  Leucocytes__ReleaseA
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__Leucocytes

