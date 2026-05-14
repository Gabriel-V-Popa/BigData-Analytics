v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 AdmissionNC
v 18 AdmissionNC
v 19 CRP
v 20 AdmissionNC
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 ReleaseA
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  Leucocytes__CRP
e 21 22  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVAntibiotics
e 11 12  AdmissionNC__Leucocytes
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__AdmissionNC
e 17 18  AdmissionNC__AdmissionNC
e 18 19  AdmissionNC__CRP
e 19 20  CRP__AdmissionNC
e 20 21  AdmissionNC__Leucocytes
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__ReleaseA
e 25 26  ReleaseA__END

