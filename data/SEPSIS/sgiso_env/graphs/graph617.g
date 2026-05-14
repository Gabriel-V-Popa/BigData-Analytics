v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 Leucocytes
v 19 Leucocytes
v 20 Leucocytes
v 21 AdmissionNC
v 22 ReleaseA
v 23 ReturnER
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 15 16  CRP__Leucocytes
e 21 22  AdmissionNC__ReleaseA
e 22 23  ReleaseA__ReturnER
e 23 24  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 16 17  Leucocytes__Leucocytes
e 20 21  Leucocytes__AdmissionNC
e 17 18  Leucocytes__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__Leucocytes

