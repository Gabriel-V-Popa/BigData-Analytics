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
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 AdmissionNC
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 AdmissionNC
v 20 AdmissionNC
v 21 CRP
v 22 CRP
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 CRP
v 31 AdmissionNC
v 32 ReleaseD
v 33 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 7 8  Leucocytes__IVLiquid
e 14 15  Leucocytes__AdmissionNC
e 15 16  AdmissionNC__CRP
e 16 17  CRP__Leucocytes
e 23 24  Leucocytes__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__AdmissionNC
e 19 20  AdmissionNC__AdmissionNC
e 20 21  AdmissionNC__CRP
e 21 22  CRP__CRP
e 22 23  CRP__Leucocytes
e 26 27  CRP__CRP
e 27 28  CRP__Leucocytes
e 28 29  Leucocytes__CRP
e 30 31  CRP__AdmissionNC
e 29 30  CRP__CRP
e 31 32  AdmissionNC__ReleaseD
e 32 33  ReleaseD__END

