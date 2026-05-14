v 1 START
v 2 Leucocytes
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 Leucocytes
v 7 CRP
v 8 END
e 3 4  ERRegistration__ERTriage
e 5 6  ERSepsisTriage__Leucocytes
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__Leucocytes
e 2 3  Leucocytes__ERRegistration
e 6 7  Leucocytes__CRP
e 7 8  CRP__END

