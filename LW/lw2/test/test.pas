program mini;

uses dos;

var
  a:string;
  c:char;
begin
// устанавливаем cookie (должно быть выведено до передачи content-type)
// не забудьте изменить срок окончания

writeln('Set-cookie:widget=value; path=/; expires= Mon, 21-Mar-2005  18:37:00 GMT');

  // указываем тип содержимого, как html
  writeln('Content-Type:text/html',#10#13);

  // получаем cookies
  a:= GetEnv('HTTP_COOKIE');
  writeln('cookies:',a);
  
  // данные, переданные методом GET
  a:='';
  a:= GetEnv('QUERY_STRING');
  writeln('GET: ',a);
	
  // данные, переданные методом POST
  a:='';
  while not eof(input) do
  begin
     read(c);
     a:= a+c;
  end;	 
  writeln('POST: ',a);
end.