declare
    v_sayi1 number;
    v_sayi2 number;
    v_sayi3 number := 70;
begin
    v_sayi1 := 100;
    
    if v_sayi1 > v_sayi2 then
        DBMS_OUTPUT.PUT_LINE('Kontrol-1');
    end if;

    v_sayi2 := 80;
    
    if v_sayi1 > v_sayi2 then
        DBMS_OUTPUT.PUT_LINE('Kontrol-2');
    end if;
    
    if (v_sayi1 > v_sayi2) and (v_sayi1 > v_sayi3) then
        DBMS_OUTPUT.PUT_LINE('Kontrol-3');
    end if;
end;