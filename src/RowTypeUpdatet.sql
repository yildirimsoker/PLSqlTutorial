declare
    v_per_ayr personel_ayrilan%rowtype;
begin
    select * into v_per_ayr from personel_ayrilan
    where personel_id = 5020;
    
    v_per_ayr.cikis_tarihi := sysdate;
    
    update personel_ayrilan set ROW = v_per_ayr
    where personel_id = 5020;
    
    commit;

end;