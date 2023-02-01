variable b_sonuc number
begin
    select sum(maas) into :b_sonuc from personel;
end;
/
print b_sonuc;