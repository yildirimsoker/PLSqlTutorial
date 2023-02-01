declare
    type kisi_type is record
    (
        ad_soyad varchar2(100),
        toplam_gelir number default 500,
        per_satir personel%rowtype
    );
    
    v_calisan kisi_type;

begin
    select * into v_calisan.per_satir from personel
    where personel_id = 5020;
    
    v_calisan.ad_soyad := v_calisan.per_satir.ad || ' ' ||  v_calisan.per_satir.soyad;
    v_calisan.toplam_gelir := v_calisan.per_satir.prim + v_calisan.per_satir.maas;
    
    DBMS_OUTPUT.PUT_LINE(v_calisan.ad_soyad || ' ' || v_calisan.toplam_gelir);
    
end;