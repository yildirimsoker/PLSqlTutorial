declare
    cursor c_personel is 
        select ad, maas from personel
        where unvan = 'UZMAN';
     
     v_per_record c_personel%rowtype;
begin
    open c_personel;
    
    loop 
        fetch c_personel into v_per_record;
        exit when c_personel%notfound;
        DBMS_OUTPUT.PUT_LINE(v_per_record.ad || ' ' || v_per_record.maas);
    end loop;
    
    close c_personel;
end;