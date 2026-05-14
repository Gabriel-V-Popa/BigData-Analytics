v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 AdmissionNC
v 16 AdmissionNC
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 Leucocytes
v 23 CRP
v 24 CRP
v 25 Leucocytes
v 26 Leucocytes
v 27 CRP
v 28 Leucocytes
v 29 Leucocytes
v 30 CRP
v 31 ReleaseB
v 32 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__Leucocytes
e 27 28  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__AdmissionNC
e 16 17  AdmissionNC__Leucocytes
e 15 16  AdmissionNC__AdmissionNC
e 21 22  Leucocytes__Leucocytes
e 22 23  Leucocytes__CRP
e 23 24  CRP__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__Leucocytes
e 26 27  Leucocytes__CRP
e 28 29  Leucocytes__Leucocytes
e 31 32  ReleaseB__END
e 29 30  Leucocytes__CRP
e 30 31  CRP__ReleaseB

