v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 CRP
v 28 Leucocytes
v 29 ReleaseA
v 30 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__CRP
e 25 26  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 6 7  CRP__IVLiquid
e 7 8  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 9 10  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 23 24  CRP__CRP
e 24 25  CRP__Leucocytes
e 26 27  CRP__CRP
e 27 28  CRP__Leucocytes
e 28 29  Leucocytes__ReleaseA
e 29 30  ReleaseA__END

