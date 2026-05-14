v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 CRP
v 22 ReleaseC
v 23 ReturnER
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 22 23  ReleaseC__ReturnER
e 23 24  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__AdmissionNC
e 7 8  LacticAcid__IVAntibiotics
e 9 10  AdmissionNC__Leucocytes
e 10 11  Leucocytes__CRP
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 21 22  CRP__ReleaseC
e 19 20  CRP__CRP
e 20 21  CRP__CRP

