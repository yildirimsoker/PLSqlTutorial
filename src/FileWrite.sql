create or replace directory EGITIM_DIR as 'D:\OracleDosya';

GRANT read, write on directory EGITIM_DIR to EGITIM;


create or replace procedure sp_dosya_yaz 
(
    p_dosya_ismi varchar2, 
    p_dizin varchar2
)
is
    filex utl_file.file_type;
begin
    filex := utl_file.fopen(p_dizin, p_dosya_ismi , 'W');
    utl_file.put_line(filex, 'Merhaba');
    utl_file.put_line(filex, 'Nasilsin');
    utl_file.fclose(filex);
end;



begin
sp_dosya_yaz('deneme.txt', 'EGITIM_DIR');
end;