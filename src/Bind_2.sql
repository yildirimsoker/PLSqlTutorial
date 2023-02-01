variable b_sum number;
set autoprint on;
declare
    v_unvan varchar2(20) := &unvan;
begin
    select sum(maas) into :b_sum from personel
    where unvan = v_unvan;
end;