declare
    v_sayac pls_integer := 0;
begin
    while v_sayac < 10 loop
        v_sayac := v_sayac + 1;
        DBMS_OUTPUT.PUT_LINE(v_sayac);
    end loop;
end;


declare
    v_sayac pls_integer := 0;
begin
    while v_sayac < 10 loop
        v_sayac := v_sayac + 1;
        DBMS_OUTPUT.PUT_LINE(v_sayac);
        
        exit when v_sayac = 5;
        
    end loop;
end;