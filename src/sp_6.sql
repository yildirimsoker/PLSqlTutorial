create or replace procedure sp_tel_no_formatla
(
    p_tel_no in out varchar2
)
is
begin
    p_tel_no := '0' || p_tel_no;
end;

declare
    v_tel_no varchar2(30) := '5354872321';
begin
    sp_tel_no_formatla(v_tel_no);
    DBMS_OUTPUT.PUT_LINE(v_tel_no);
end;