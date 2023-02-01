create or replace procedure sp_personel_yazdir(p_unvan varchar2)
is
    cursor c_personel is
    select ad, soyad, maas from personel
    where unvan = p_unvan;
begin
    
    for p_row in c_personel loop
        DBMS_OUTPUT.PUT_LINE(p_row.ad || ' ' || p_row.soyad);
    end loop;

end;

begin
sp_personel_yazdir('MÜDÜR');
end;