program lab8;

{$APPTYPE CONSOLE}

{$R *.res}
uses
  System.SysUtils;
  type tmas=array[1..1000] of integer;
TMasScore=array[1..5] of integer;
var
MasScore:TMasScore;
flag:boolean;
score,CurrNumber,i,n,counter,RoundCount:integer;


Function MasChecker(const MasScore_1: TMasScore; const players: integer):boolean;
var
i_1:integer;
flag_1:boolean;
begin
	flag_1:= true;
	i_1:=1;
	while flag_1 and (i_1<=players) do
		begin
			if MasScore_1[i_1]>=5 then
      flag_1:=false;
			inc(i_1);
		end;
	result:=flag_1;
end;


  Procedure RoundSummary(_i,_RoundCount:integer; var _MasScore:TMasScore; _score:integer);
	begin
		inc(_MasScore[_i]);
		if _score>999 then
		 _MasScore[_i]:=_MasScore[_i]*2;
    Writeln('Раунд ',_RoundCount,' Проиграл ',_i,'-й игрок Сумма штрафных очков - ',_MasScore[_i]);
	end;

  function Vvod_i_Proverka():integer;
  var CurrNumber2:integer;
begin
  read(CurrNumber2);
  while (CurrNumber2>9) or (CurrNumber2<1) do
    begin
      writeln('Введите число из заданного диапазона');
      readln(CurrNumber2);
    end;
  writeln('Введенное игроком число-',CurrNumber2);
  result:=CurrNumber2;
end;



begin
 Write('Количество игроков-');
 read(n);
 for counter:= 1 to n do
 MasScore[counter]:=0;
RoundCount:=0;
while maschecker(MasScore,n) do
begin
randomize;
Score:=random(50)+900;
i:=0;
inc(RoundCount);
while score<999 do
  begin
  inc(i);
  if i>n then
  i:=1;
  Writeln('Игрок ',i,', Введите число от 1 до 9');
  CurrNumber:=Vvod_i_Proverka;
  score:=score+CurrNumber;
  end;
roundsummary(i,RoundCount,MasScore,score);
end;
writeln('Проигравший игрок: Игрок ', i);

end.
