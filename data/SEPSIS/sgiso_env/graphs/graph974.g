v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 AdmissionIC
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 LacticAcid
v 22 Leucocytes
v 23 LacticAcid
v 24 CRP
v 25 LacticAcid
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 LacticAcid
v 31 LacticAcid
v 32 Leucocytes
v 33 CRP
v 34 LacticAcid
v 35 CRP
v 36 Leucocytes
v 37 Leucocytes
v 38 CRP
v 39 LacticAcid
v 40 Leucocytes
v 41 CRP
v 42 LacticAcid
v 43 CRP
v 44 Leucocytes
v 45 LacticAcid
v 46 LacticAcid
v 47 Leucocytes
v 48 CRP
v 49 Leucocytes
v 50 LacticAcid
v 51 CRP
v 52 AdmissionNC
v 53 ReleaseA
v 54 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 14 15  LacticAcid__Leucocytes
e 15 16  Leucocytes__CRP
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 32 33  Leucocytes__CRP
e 40 41  Leucocytes__CRP
e 47 48  Leucocytes__CRP
e 48 49  CRP__Leucocytes
e 29 30  Leucocytes__LacticAcid
e 44 45  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__IVLiquid
e 7 8  IVLiquid__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 11 12  CRP__AdmissionIC
e 11 14  CRP__LacticAcid
e 9 10  AdmissionNC__Leucocytes
e 10 11  Leucocytes__CRP
e 13 15  CRP__Leucocytes
e 12 13  AdmissionIC__CRP
e 16 17  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__LacticAcid
e 21 22  LacticAcid__Leucocytes
e 22 23  Leucocytes__LacticAcid
e 23 24  LacticAcid__CRP
e 24 25  CRP__LacticAcid
e 26 27  CRP__Leucocytes
e 25 26  LacticAcid__CRP
e 30 31  LacticAcid__LacticAcid
e 31 32  LacticAcid__Leucocytes
e 33 34  CRP__LacticAcid
e 35 36  CRP__Leucocytes
e 34 35  LacticAcid__CRP
e 36 37  Leucocytes__Leucocytes
e 37 38  Leucocytes__CRP
e 38 39  CRP__LacticAcid
e 39 40  LacticAcid__Leucocytes
e 41 42  CRP__LacticAcid
e 43 44  CRP__Leucocytes
e 42 43  LacticAcid__CRP
e 45 46  LacticAcid__LacticAcid
e 46 47  LacticAcid__Leucocytes
e 49 50  Leucocytes__LacticAcid
e 51 52  CRP__AdmissionNC
e 50 51  LacticAcid__CRP
e 52 53  AdmissionNC__ReleaseA
e 53 54  ReleaseA__END

