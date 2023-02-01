declare
    v_dept_id departman.dept_id%type := 115;
begin
    delete from departman 
    where dept_id = v_dept_id;
    
    commit;
end;

