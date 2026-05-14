v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 Leucocytes
v 19 Leucocytes
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 Leucocytes
v 27 Leucocytes
v 28 ReleaseA
v 29 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__CRP
e 25 26  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 7 8  CRP__LacticAcid
e 8 9  LacticAcid__IVAntibiotics
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 20 21  Leucocytes__CRP
e 17 18  Leucocytes__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__Leucocytes
e 26 27  Leucocytes__Leucocytes
e 28 29  ReleaseA__END
e 27 28  Leucocytes__ReleaseA

