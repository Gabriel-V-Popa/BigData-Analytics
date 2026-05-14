v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 ReleaseA
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 17 18  Leucocytes__Leucocytes
e 18 19  Leucocytes__CRP
e 22 23  Leucocytes__CRP
e 24 25  ReleaseA__END
e 23 24  CRP__ReleaseA

