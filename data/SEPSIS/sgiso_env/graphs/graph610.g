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
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 Leucocytes
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 AdmissionNC
v 30 AdmissionNC
v 31 ReleaseB
v 32 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__CRP
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 26 27  CRP__Leucocytes
e 31 32  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 15 16  CRP__CRP
e 16 17  CRP__Leucocytes
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__Leucocytes
e 25 26  Leucocytes__CRP
e 27 28  Leucocytes__CRP
e 28 29  CRP__AdmissionNC
e 28 31  CRP__ReleaseB
e 30 32  AdmissionNC__END
e 29 30  AdmissionNC__AdmissionNC

