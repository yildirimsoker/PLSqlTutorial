declare
    v_name nvarchar2(25);
begin

    select ad into v_name from personel
    where unvan = 'UZMAN';
    
    DBMS_OUTPUT.PUT_LINE(v_name);
    
    exception
        when too_many_rows then
            DBMS_OUTPUT.PUT_LINE('Birden fazla kayit geldi...');
    
end;