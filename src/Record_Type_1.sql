set serveroutput on

declare
    type type_perso is record
    (
        v_adi varchar2(30),
        v_soyadi personel.soyad%type,
        v_maas number,
        v_izin_gunu pls_integer
    );
    
    v_personel type_perso;
    
begin
    v_personel.v_adi := 'Ekrem';
    v_personel.v_soyadi := 'Tiryaki';
    v_personel.v_maas := 2000;
    v_personel.v_izin_gunu := 25;
    
    dbms_output.put_line('Adi:' || v_personel.v_adi);
    dbms_output.put_line('Soyad:' || v_personel.v_soyadi);
    dbms_output.put_line('Maas:' || v_personel.v_maas);
    dbms_output.put_line('Izin:' || v_personel.v_izin_gunu);
end;