declare
    v_name nvarchar2(25);
begin

    select ad into v_name from personel
    where personel_id = 5010;
    
    DBMS_OUTPUT.PUT_LINE(v_name);
    
    DBMS_OUTPUT.PUT_LINE(1/0);
    
    exception
        when too_many_rows then
            DBMS_OUTPUT.PUT_LINE('Birden fazla kayit geldi...');
        when others then
            DBMS_OUTPUT.PUT_LINE('Bilinmeyen Hata...');    
    
end;