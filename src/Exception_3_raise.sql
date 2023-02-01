declare
    v_maas number := &maas_degeri;
    e_maas_hatasi exception;
begin
    if v_maas > 20000 then
        raise e_maas_hatasi;
    end if;
    
    insert into personel (personel_id, ad, soyad, maas)
    values (10001, 'Yildiri', 'Soker', v_maas);
    
    commit;
    
    exception 
        when e_maas_hatasi then 
            DBMS_OUTPUT.PUT_LINE('Maas 20.000 Fazla Olamaz...');
end;

