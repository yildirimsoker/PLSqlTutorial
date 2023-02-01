declare
    cursor c_personel(v_unvan varchar2) is
        select personel_id, ad, soyad, maas from personel
        where unvan = v_unvan
        for update;
begin

    for row_prs in c_personel('UZMAN') loop
       
       update personel set maas = maas*1.25
       where current of c_personel;

    end loop;
end;