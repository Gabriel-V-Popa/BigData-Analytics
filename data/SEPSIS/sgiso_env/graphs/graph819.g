v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionIC
v 10 CRP
v 11 LacticAcid
v 12 Leucocytes
v 13 Leucocytes
v 14 Leucocytes
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 Leucocytes
v 20 CRP
v 21 LacticAcid
v 22 LacticAcid
v 23 CRP
v 24 Leucocytes
v 25 AdmissionNC
v 26 Leucocytes
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 Leucocytes
v 31 CRP
v 32 CRP
v 33 Leucocytes
v 34 Leucocytes
v 35 CRP
v 36 Leucocytes
v 37 CRP
v 38 CRP
v 39 Leucocytes
v 40 Leucocytes
v 41 CRP
v 42 Leucocytes
v 43 CRP
v 44 Leucocytes
v 45 CRP
v 46 Leucocytes
v 47 CRP
v 48 Leucocytes
v 49 CRP
v 50 Leucocytes
v 51 CRP
v 52 ReleaseA
v 53 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 8 9  IVAntibiotics__AdmissionIC
e 8 11  IVAntibiotics__LacticAcid
e 11 12  LacticAcid__Leucocytes
e 19 20  Leucocytes__CRP
e 24 25  Leucocytes__AdmissionNC
e 27 28  CRP__Leucocytes
e 28 29  Leucocytes__CRP
e 29 30  CRP__Leucocytes
e 30 31  Leucocytes__CRP
e 35 36  CRP__Leucocytes
e 36 37  Leucocytes__CRP
e 41 42  CRP__Leucocytes
e 42 43  Leucocytes__CRP
e 43 44  CRP__Leucocytes
e 44 45  Leucocytes__CRP
e 45 46  CRP__Leucocytes
e 46 47  Leucocytes__CRP
e 47 48  CRP__Leucocytes
e 48 49  Leucocytes__CRP
e 49 50  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 7 8  CRP__IVAntibiotics
e 6 7  LacticAcid__CRP
e 10 12  CRP__Leucocytes
e 9 10  AdmissionIC__CRP
e 12 13  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 17 18  CRP__LacticAcid
e 18 19  LacticAcid__Leucocytes
e 20 21  CRP__LacticAcid
e 23 24  CRP__Leucocytes
e 21 22  LacticAcid__LacticAcid
e 22 23  LacticAcid__CRP
e 25 26  AdmissionNC__Leucocytes
e 26 27  Leucocytes__CRP
e 31 32  CRP__CRP
e 32 33  CRP__Leucocytes
e 33 34  Leucocytes__Leucocytes
e 34 35  Leucocytes__CRP
e 37 38  CRP__CRP
e 38 39  CRP__Leucocytes
e 39 40  Leucocytes__Leucocytes
e 40 41  Leucocytes__CRP
e 50 51  Leucocytes__CRP
e 52 53  ReleaseA__END
e 51 52  CRP__ReleaseA

