declare
    v_deger number := &deger;
begin
    if v_deger > 100 then
        RAISE_APPLICATION_ERROR(-20001, '100 den b�y�k sayi giremezsiniz.');
    end if;
    
    DBMS_OUTPUT.PUT_LINE('Tesekk�rler...');
end;