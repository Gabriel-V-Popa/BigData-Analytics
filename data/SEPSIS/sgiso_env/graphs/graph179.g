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
v 13 CRP
v 14 AdmissionNC
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 AdmissionNC
v 19 CRP
v 20 Leucocytes
v 21 ReleaseA
v 22 ReturnER
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 18 19  AdmissionNC__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__ReleaseA
e 21 22  ReleaseA__ReturnER
e 22 23  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__IVLiquid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVAntibiotics
e 9 10  IVLiquid__AdmissionNC
e 10 11  AdmissionNC__CRP
e 13 14  CRP__AdmissionNC
e 14 15  AdmissionNC__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 17 18  CRP__AdmissionNC
e 16 17  Leucocytes__CRP

