declare
 v_max_id number;
begin
    select max(dept_id) into v_max_id from departman;
    
    insert into departman (dept_id, dept_ismi) 
    values (v_max_id + 1, 'Musteri Elde Tutma');
    
    commit;
end;
