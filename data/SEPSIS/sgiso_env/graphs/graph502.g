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
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 Leucocytes
v 24 ReleaseA
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 21 22  Leucocytes__CRP
e 22 23  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  CRP__CRP
e 12 13  CRP__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 19 20  CRP__CRP
e 20 21  CRP__Leucocytes
e 23 24  Leucocytes__ReleaseA
e 24 25  ReleaseA__END

