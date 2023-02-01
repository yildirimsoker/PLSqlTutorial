declare
    cursor c_personel is 
        select ad, maas from personel
        where personel_id = 5020;
     
     v_ad personel.ad%type;
     v_maas personel.maas%type;   
begin
    open c_personel;
    
    fetch c_personel into v_ad, v_maas;
    
    DBMS_OUTPUT.PUT_LINE(v_ad || ' ' || v_maas);
    
    close c_personel;
end;