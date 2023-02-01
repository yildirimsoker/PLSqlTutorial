create table personel_ayrilan as
select personel_id, ad,soyad, dept_id, cikis_tarihi from personel
where 1 = 0



declare
    v_per_ayilan personel_ayrilan%rowtype;
begin
    
    select personel_id, ad,soyad, dept_id, cikis_tarihi into v_per_ayilan from personel
    where personel_id = 5019;
    
    insert into personel_ayrilan values v_per_ayilan;
    commit;

end;

select * from personel_ayrilan