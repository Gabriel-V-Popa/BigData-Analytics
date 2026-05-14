v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 Leucocytes
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 Leucocytes
v 22 CRP
v 23 ReleaseA
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 7 8  CRP__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionNC
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__CRP
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__CRP
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__Leucocytes
e 23 24  ReleaseA__END
e 21 22  Leucocytes__CRP
e 22 23  CRP__ReleaseA

