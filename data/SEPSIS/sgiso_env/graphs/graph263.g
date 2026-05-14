v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 IVLiquid
v 11 IVAntibiotics
v 12 AdmissionNC
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 AdmissionNC
v 19 AdmissionNC
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 Leucocytes
v 24 CRP
v 25 AdmissionNC
v 26 ReleaseB
v 27 END
e 4 5  ERRegistration__ERTriage
e 8 9  Leucocytes__CRP
e 13 14  Leucocytes__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 22 23  CRP__Leucocytes
e 25 27  AdmissionNC__END
e 26 27  ReleaseB__END
e 5 6  ERTriage__ERSepsisTriage
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 6 7  ERSepsisTriage__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 9 10  CRP__IVLiquid
e 12 13  AdmissionNC__Leucocytes
e 10 11  IVLiquid__IVAntibiotics
e 11 12  IVAntibiotics__AdmissionNC
e 14 15  CRP__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__AdmissionNC
e 18 19  AdmissionNC__AdmissionNC
e 19 20  AdmissionNC__CRP
e 23 24  Leucocytes__CRP
e 24 25  CRP__AdmissionNC
e 24 26  CRP__ReleaseB

