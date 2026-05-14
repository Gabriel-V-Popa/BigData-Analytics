v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 ReleaseA
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  LacticAcid__Leucocytes
e 5 6  IVLiquid__LacticAcid
e 8 9  CRP__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 9 10  IVAntibiotics__AdmissionNC
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__ReleaseA
e 25 26  ReleaseA__END

