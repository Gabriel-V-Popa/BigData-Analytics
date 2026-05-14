v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 CRP
v 22 Leucocytes
v 23 Leucocytes
v 24 Leucocytes
v 25 CRP
v 26 ReleaseA
v 27 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 19 20  Leucocytes__CRP
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__CRP
e 17 18  CRP__CRP
e 18 19  CRP__Leucocytes
e 20 21  CRP__CRP
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__Leucocytes
e 26 27  ReleaseA__END
e 23 24  Leucocytes__Leucocytes
e 24 25  Leucocytes__CRP
e 25 26  CRP__ReleaseA

