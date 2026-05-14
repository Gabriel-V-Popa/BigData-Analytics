v 1 START
v 2 ERSepsisTriage
v 3 IVAntibiotics
v 4 IVLiquid
v 5 ERRegistration
v 6 ERTriage
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 AdmissionNC
v 19 Leucocytes
v 20 Leucocytes
v 21 ReleaseA
v 22 ReturnER
v 23 END
e 5 6  ERRegistration__ERTriage
e 6 7  ERTriage__CRP
e 7 8  CRP__Leucocytes
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__AdmissionNC
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__AdmissionNC
e 21 22  ReleaseA__ReturnER
e 22 23  ReturnER__END
e 1 2  START__ERSepsisTriage
e 4 5  IVLiquid__ERRegistration
e 2 3  ERSepsisTriage__IVAntibiotics
e 3 4  IVAntibiotics__IVLiquid
e 8 9  Leucocytes__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__CRP
e 14 15  AdmissionNC__Leucocytes
e 15 16  Leucocytes__CRP
e 18 19  AdmissionNC__Leucocytes
e 20 21  Leucocytes__ReleaseA
e 19 20  Leucocytes__Leucocytes

