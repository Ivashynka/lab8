﻿program lab8;

{$APPTYPE CONSOLE}

{$R *.res}
uses
  System.SysUtils;
var I,O:textfile;
s:string;
begin
assignFile(I,'C:\Users\ivash\Desktop\OAiP(LR)\lab8\input.txt');
assignFile(O,'C:\Users\ivash\Desktop\OAiP(LR)\lab8\output.txt');
reset(I);
while not(EOF(I)) do
  begin
  readln(I,s);
  writeln(s);
  end;
  closefile(I);
  Rewrite(o) ;

  append(o);
  Writeln(o,'fjlkdj');
  closefile(O) ;
  readln;
end.
