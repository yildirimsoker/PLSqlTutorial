declare 
    v_sayac pls_integer := 0;
begin
    
    loop
        v_sayac := v_sayac + 1;
        DBMS_OUTPUT.put_line(v_sayac || '.sayi');
        
        exit when v_sayac = 10;
    end loop;
end;