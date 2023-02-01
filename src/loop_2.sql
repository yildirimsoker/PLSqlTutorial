declare
    v_sayac pls_integer := 0;
    v_ps_id pls_integer;
    v_ad personel.ad%type;
    v_soyad personel.soyad%type;
begin

    loop
        v_sayac := v_sayac + 1;
        
        v_ps_id := dbms_random.value(5000, 5020);
        
        select ad, soyad into v_ad, v_soyad from personel 
        where personel_id = v_ps_id;
        
        DBMS_OUTPUT.PUT_LINE(v_ps_id || ':' || v_ad || ':' || v_soyad);
        
        exit when v_sayac = 10;
    end loop;
end;