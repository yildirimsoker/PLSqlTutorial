declare 
    v_sayi number;
begin
    delete from personel_temp
    where unvan = 'UZMAN';
    
    v_sayi := SQL%ROWCOUNT;
    
    DBMS_OUTPUT.PUT_LINE(v_sayi);
end;

--create table personel_temp as select * from personel


