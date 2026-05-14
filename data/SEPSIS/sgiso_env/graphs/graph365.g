v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 ReleaseA
v 28 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__IVLiquid
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 11 12  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__Leucocytes
e 21 22  Leucocytes__CRP
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__CRP
e 27 28  ReleaseA__END
e 25 26  CRP__CRP
e 26 27  CRP__ReleaseA

