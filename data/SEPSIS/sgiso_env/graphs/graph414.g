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
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 LacticAcid
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 Leucocytes
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 CRP
v 25 Leucocytes
v 26 Leucocytes
v 27 CRP
v 28 ReleaseA
v 29 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  CRP__Leucocytes
e 14 15  LacticAcid__Leucocytes
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 13 14  Leucocytes__LacticAcid
e 5 6  Leucocytes__CRP
e 7 8  LacticAcid__IVLiquid
e 6 7  CRP__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__Leucocytes
e 20 21  Leucocytes__CRP
e 23 24  CRP__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__Leucocytes
e 28 29  ReleaseA__END
e 26 27  Leucocytes__CRP
e 27 28  CRP__ReleaseA

