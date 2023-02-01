declare
    cursor c_personel is 
        select ad, maas from personel
        where unvan = 'UZMAN';
     
     v_ad personel.ad%type;
     v_maas personel.maas%type;   
begin
    open c_personel;
    
    loop 
        fetch c_personel into v_ad, v_maas;
        exit when c_personel%notfound;
        DBMS_OUTPUT.PUT_LINE(v_ad || ' ' || v_maas);
    end loop;
    
    close c_personel;
end;