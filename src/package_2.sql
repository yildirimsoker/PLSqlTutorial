create or replace package pck_sabitler as
    c_mil2metre constant number := 1609;
    c_fit2metre constant number := 0.3048;
end pck_sabitler;


begin
    DBMS_OUTPUT.PUT_LINE(pck_sabitler.c_mil2metre * 50);
end;