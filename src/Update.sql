declare
    v_artis_orani number := 21;
begin
    update personel set maas = maas + maas * (v_artis_orani / 100) where personel_id = 5000;
    commit;
end;


select * from personel where personel_id = 5000;