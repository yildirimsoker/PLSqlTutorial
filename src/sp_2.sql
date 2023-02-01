create or replace procedure sp_uzman_yazdir
is
    cursor c_personel is
    select ad, soyad, maas from personel
    where unvan = 'UZMAN';
begin
    
    for p_row in c_personel loop
        DBMS_OUTPUT.PUT_LINE(p_row.ad || ' ' || p_row.soyad);
    end loop;

end;


begin
sp_uzman_yazdir;
end;