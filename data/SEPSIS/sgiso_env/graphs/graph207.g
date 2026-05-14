v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 Leucocytes
v 17 Leucocytes
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 Leucocytes
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 ReleaseD
v 31 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  IVAntibiotics__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__CRP
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 19 20  CRP__Leucocytes
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__CRP
e 25 26  CRP__Leucocytes
e 28 29  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 9 10  CRP__AdmissionNC
e 11 12  AdmissionNC__Leucocytes
e 10 11  AdmissionNC__AdmissionNC
e 14 15  Leucocytes__Leucocytes
e 18 19  Leucocytes__CRP
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__Leucocytes
e 20 21  Leucocytes__Leucocytes
e 22 23  Leucocytes__CRP
e 21 22  Leucocytes__Leucocytes
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__CRP
e 29 30  Leucocytes__ReleaseD
e 30 31  ReleaseD__END

