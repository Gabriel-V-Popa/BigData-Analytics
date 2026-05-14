v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 Leucocytes
v 24 Leucocytes
v 25 Leucocytes
v 26 Leucocytes
v 27 Leucocytes
v 28 Leucocytes
v 29 Leucocytes
v 30 Leucocytes
v 31 Leucocytes
v 32 CRP
v 33 Leucocytes
v 34 Leucocytes
v 35 Leucocytes
v 36 Leucocytes
v 37 Leucocytes
v 38 Leucocytes
v 39 Leucocytes
v 40 CRP
v 41 Leucocytes
v 42 Leucocytes
v 43 CRP
v 44 ReleaseA
v 45 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 12  IVAntibiotics__LacticAcid
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 22 23  CRP__Leucocytes
e 32 33  CRP__Leucocytes
e 40 41  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 7 8  CRP__IVLiquid
e 10 11  AdmissionIC__Leucocytes
e 12 13  LacticAcid__CRP
e 11 13  Leucocytes__CRP
e 14 15  AdmissionNC__Leucocytes
e 13 14  CRP__AdmissionNC
e 23 24  Leucocytes__Leucocytes
e 31 32  Leucocytes__CRP
e 24 25  Leucocytes__Leucocytes
e 25 26  Leucocytes__Leucocytes
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__Leucocytes
e 28 29  Leucocytes__Leucocytes
e 29 30  Leucocytes__Leucocytes
e 30 31  Leucocytes__Leucocytes
e 33 34  Leucocytes__Leucocytes
e 39 40  Leucocytes__CRP
e 34 35  Leucocytes__Leucocytes
e 35 36  Leucocytes__Leucocytes
e 36 37  Leucocytes__Leucocytes
e 37 38  Leucocytes__Leucocytes
e 38 39  Leucocytes__Leucocytes
e 41 42  Leucocytes__Leucocytes
e 44 45  ReleaseA__END
e 42 43  Leucocytes__CRP
e 43 44  CRP__ReleaseA

