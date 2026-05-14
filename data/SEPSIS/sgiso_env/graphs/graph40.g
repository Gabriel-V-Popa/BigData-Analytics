v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 IVLiquid
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 Leucocytes
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 LacticAcid
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 ReleaseC
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 12 13  Leucocytes__CRP
e 22 23  Leucocytes__CRP
e 23 24  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVAntibiotics
e 6 7  IVLiquid__Leucocytes
e 5 6  IVAntibiotics__IVLiquid
e 8 9  CRP__LacticAcid
e 11 12  AdmissionNC__Leucocytes
e 9 10  LacticAcid__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 20 21  CRP__LacticAcid
e 21 22  LacticAcid__Leucocytes
e 24 25  Leucocytes__ReleaseC
e 25 26  ReleaseC__END

