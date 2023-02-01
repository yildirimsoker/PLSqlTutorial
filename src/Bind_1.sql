

variable b_unvan varchar2(20)
begin
    select unvan into :b_unvan from personel 
    where personel_id = 5004;
end;
/
print b_unvan
select * from personel where unvan = :b_unvan;