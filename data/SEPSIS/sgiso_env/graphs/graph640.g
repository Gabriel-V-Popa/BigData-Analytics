v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 CRP
v 7 Leucocytes
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 AdmissionNC
v 16 AdmissionNC
v 17 AdmissionNC
v 18 CRP
v 19 Leucocytes
v 20 AdmissionNC
v 21 Leucocytes
v 22 Leucocytes
v 23 CRP
v 24 CRP
v 25 Leucocytes
v 26 Leucocytes
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 ReleaseB
v 31 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__AdmissionNC
e 27 28  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVLiquid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 7 8  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 8 9  LacticAcid__IVAntibiotics
e 12 13  Leucocytes__Leucocytes
e 14 15  CRP__AdmissionNC
e 13 14  Leucocytes__CRP
e 15 16  AdmissionNC__AdmissionNC
e 17 18  AdmissionNC__CRP
e 16 17  AdmissionNC__AdmissionNC
e 20 21  AdmissionNC__Leucocytes
e 22 23  Leucocytes__CRP
e 21 22  Leucocytes__Leucocytes
e 23 24  CRP__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__Leucocytes
e 26 27  Leucocytes__CRP
e 28 29  Leucocytes__CRP
e 30 31  ReleaseB__END
e 29 30  CRP__ReleaseB

