declare
    v_sayi number;
begin
    update konum set konum_adi = 'Istanbul Cekmekoy'
    where konum_id = 5;
    
    v_sayi := SQL%ROWCOUNT;
    
    if SQL%FOUND then
        dbms_output.put_line('Guncellenen kayit sayisi : ' || v_sayi);
    else
         dbms_output.put_line('Kayit bulunamadi.');
    end if;
    
    commit;
end;