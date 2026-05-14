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
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 CRP
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 CRP
v 34 Leucocytes
v 35 Leucocytes
v 36 Leucocytes
v 37 Leucocytes
v 38 CRP
v 39 ReleaseB
v 40 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__CRP
e 22 23  Leucocytes__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__CRP
e 27 28  Leucocytes__CRP
e 31 32  Leucocytes__CRP
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 11 12  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__CRP
e 20 21  CRP__CRP
e 21 22  CRP__Leucocytes
e 25 26  CRP__CRP
e 26 27  CRP__Leucocytes
e 28 29  CRP__CRP
e 30 31  CRP__Leucocytes
e 29 30  CRP__CRP
e 32 33  CRP__CRP
e 33 34  CRP__Leucocytes
e 34 35  Leucocytes__Leucocytes
e 39 40  ReleaseB__END
e 35 36  Leucocytes__Leucocytes
e 36 37  Leucocytes__Leucocytes
e 37 38  Leucocytes__CRP
e 38 39  CRP__ReleaseB

