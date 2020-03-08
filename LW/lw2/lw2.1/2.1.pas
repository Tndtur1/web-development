PROGRAM PrintHello(INPUT, OUTPUT);

USES Dos;

VAR
  GetStringText:STRING;
BEGIN {PrintHello}
  WRITELN('Content-Type: text/plain');
  WRITELN;

  WRITELN(GetEnv('REQUEST_METHOD'));
  
  GetStringText:= GetEnv('QUERY_STRING');
  WRITELN(GetStringText);

  WRITELN(GetEnv('CONTENT_LENGTH'));

  WRITELN(GetEnv('HTTP_USER_AGENT'));
  WRITELN(GetEnv('HTTP_HOST'));
END. {PrintHello}