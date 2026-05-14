v 1 START
v 2 ERSepsisTriage
v 3 ERRegistration
v 4 ERTriage
v 5 Leucocytes
v 6 CRP
v 7 END
e 3 4  ERRegistration__ERTriage
e 4 5  ERTriage__Leucocytes
e 1 2  START__ERSepsisTriage
e 2 3  ERSepsisTriage__ERRegistration
e 5 6  Leucocytes__CRP
e 6 7  CRP__END

