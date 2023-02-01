create sequence sq_temp 
start with 100 increment by 1; 

declare
    v_seq number;
begin
    v_seq := sq_temp.nextval;
    dbms_output.put_line(v_seq);
end;


begin
    insert into konum values(sq_temp.nextval, 'Yeni bir konum', 23);
end;



select * from konum