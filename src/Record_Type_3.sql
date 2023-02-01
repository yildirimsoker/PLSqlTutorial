declare
    type adres_type is record
    (
        ilce varchar2(255),
        sehir varchar2(100),
        ulke varchar2(100)
    );
    
    type musteri_type is record
    (
        musteri_ismi varchar2(100),
        teslim_adresi adres_type,
        fatura_adres adres_type
    );
    
    v_musteri musteri_type;
    
begin
    v_musteri.musteri_ismi := 'yildirim soker';
    v_musteri.teslim_adresi.ilce := 'Ala?ehir';
    v_musteri.teslim_adresi.sehir := 'Manisa';
    v_musteri.teslim_adresi.ulke := 'TR';
    
    v_musteri.fatura_adres :=  v_musteri.teslim_adresi;
    
    DBMS_OUTPUT.PUT_LINE(v_musteri.musteri_ismi);
    DBMS_OUTPUT.PUT_LINE(v_musteri.teslim_adresi.ilce);
    DBMS_OUTPUT.PUT_LINE(v_musteri.teslim_adresi.sehir);
    DBMS_OUTPUT.PUT_LINE(v_musteri.teslim_adresi.ulke);
    DBMS_OUTPUT.PUT_LINE(v_musteri.fatura_adres.ilce);
end;