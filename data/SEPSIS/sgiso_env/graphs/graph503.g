v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 Leucocytes
v 26 CRP
v 27 CRP
v 28 Leucocytes
v 29 Leucocytes
v 30 CRP
v 31 CRP
v 32 CRP
v 33 CRP
v 34 Leucocytes
v 35 CRP
v 36 Leucocytes
v 37 CRP
v 38 CRP
v 39 Leucocytes
v 40 ReleaseA
v 41 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__ERSepsisTriage
e 10 11  Leucocytes__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__CRP
e 23 24  CRP__Leucocytes
e 34 35  Leucocytes__CRP
e 35 36  CRP__Leucocytes
e 36 37  Leucocytes__CRP
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 6 7  ERSepsisTriage__IVLiquid
e 9 10  AdmissionNC__Leucocytes
e 7 8  IVLiquid__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes
e 24 25  Leucocytes__Leucocytes
e 25 26  Leucocytes__CRP
e 26 27  CRP__CRP
e 27 28  CRP__Leucocytes
e 28 29  Leucocytes__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__CRP
e 33 34  CRP__Leucocytes
e 31 32  CRP__CRP
e 32 33  CRP__CRP
e 37 38  CRP__CRP
e 38 39  CRP__Leucocytes
e 39 40  Leucocytes__ReleaseA
e 40 41  ReleaseA__END

