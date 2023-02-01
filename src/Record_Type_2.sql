declare
    type type_person is record (
        ad    personel.ad%type,
        soyad personel.soyad%type,
        maas  personel.maas%type,
        giris personel.giris_tarihi%type
    );
    v_personel type_person;
begin
    select
        ad,
        soyad,
        maas,
        giris_tarihi
    into v_personel
    from
        personel
    where
        personel_id = 5010; 
 
    DBMS_OUTPUT.PUT_LINE(v_personel.ad);
    DBMS_OUTPUT.PUT_LINE(v_personel.soyad);
    DBMS_OUTPUT.PUT_LINE(v_personel.maas);
    DBMS_OUTPUT.PUT_LINE(v_personel.giris);
 
exception when NO_DATA_FOUND then
     DBMS_OUTPUT.PUT_LINE('Caught raised exception NO_DATA_FOUND');
    
end;