set serveroutput on;

declare
    v_maas  personel.maas%type;
    v_ad    personel.ad%type;
    v_tarih personel.giris_tarihi%type;
begin
    select
        maas,
        ad,
        giris_tarihi
    into
        v_maas,
        v_ad,
        v_tarih
    from
        personel
    where
        personel_id = 5010;

    dbms_output.put_line('Adi: ' || v_ad);
    dbms_output.put_line('Maasi: ' || v_maas);
    dbms_output.put_line('Giris Tarihi: ' || v_tarih);
end;