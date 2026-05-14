v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 CRP
v 8 LacticAcid
v 9 Leucocytes
v 10 IVLiquid
v 11 IVAntibiotics
v 12 AdmissionNC
v 13 Leucocytes
v 14 CRP
v 15 AdmissionNC
v 16 CRP
v 17 Leucocytes
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 ReleaseA
v 32 END
e 4 5  ERRegistration__ERTriage
e 15 16  AdmissionNC__CRP
e 16 17  CRP__Leucocytes
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 24 25  Leucocytes__CRP
e 25 26  CRP__Leucocytes
e 28 29  CRP__Leucocytes
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 6 7  ERSepsisTriage__CRP
e 7 8  CRP__LacticAcid
e 8 9  LacticAcid__Leucocytes
e 9 10  Leucocytes__IVLiquid
e 10 11  IVLiquid__IVAntibiotics
e 11 12  IVAntibiotics__AdmissionNC
e 12 13  AdmissionNC__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__AdmissionNC
e 17 18  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 18 19  Leucocytes__Leucocytes
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__CRP
e 29 30  Leucocytes__CRP
e 31 32  ReleaseA__END
e 30 31  CRP__ReleaseA

