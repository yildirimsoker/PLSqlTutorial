declare
    v_deger number := &deger;
begin
    if v_deger > 100 then
        RAISE_APPLICATION_ERROR(-20001, '100 den büyük sayi giremezsiniz.');
    end if;
    
    DBMS_OUTPUT.PUT_LINE('Tesekkürler...');
end;