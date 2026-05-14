v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 AdmissionNC
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 Leucocytes
v 20 Leucocytes
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 Leucocytes
v 28 Leucocytes
v 29 ReleaseA
v 30 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 7 8  Leucocytes__IVLiquid
e 11 12  CRP__Leucocytes
e 14 15  AdmissionNC__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 24 25  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__CRP
e 13 14  CRP__AdmissionNC
e 17 18  CRP__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__Leucocytes
e 21 22  Leucocytes__CRP
e 20 21  Leucocytes__Leucocytes
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes
e 25 26  CRP__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__Leucocytes
e 29 30  ReleaseA__END
e 28 29  Leucocytes__ReleaseA

