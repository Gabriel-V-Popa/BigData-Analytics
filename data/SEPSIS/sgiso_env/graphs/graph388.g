v 1 START
v 2 CRP
v 3 Leucocytes
v 4 ERRegistration
v 5 Leucocytes
v 6 CRP
v 7 ERTriage
v 8 ERSepsisTriage
v 9 END
e 8 9  ERSepsisTriage__END
e 1 2  START__CRP
e 3 4  Leucocytes__ERRegistration
e 2 3  CRP__Leucocytes
e 4 5  ERRegistration__Leucocytes
e 5 6  Leucocytes__CRP
e 6 7  CRP__ERTriage
e 7 8  ERTriage__ERSepsisTriage

