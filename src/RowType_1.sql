declare
    v_perso personel%rowtype;
begin
    select * into v_perso from personel
    where personel_id = 5060;
    
    DBMS_OUTPUT.PUT_LINE(v_perso.ad);
    DBMS_OUTPUT.PUT_LINE(v_perso.soyad);
    DBMS_OUTPUT.PUT_LINE(v_perso.maas);
end;


