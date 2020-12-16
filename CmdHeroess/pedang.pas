unit pedang;

interface
uses crt;
procedure swordH();
procedure swordB();

implementation

//Procedure Animasi Pedang Bot
procedure swordH();
var
   x,y:integer;
begin
     x:=12;
     y:=7;
     repeat
    //ANIMASI 1
     clrscr;
     gotoXY(10,5);
     writeln('*');
     gotoXY(9,6);
     writeln('***');
     gotoXY(10,7);
     writeln('|');
     gotoXY(8,7);
     writeln('--');
     gotoXY(11,7);
     writeln('--');
     gotoXY(9,8);
     writeln('/');
     gotoXY(11,8);
     writeln('\');
     gotoXY(8,9);
     writeln('/');
     gotoXY(12,9);
     writeln('\');
     {gotoXY(12,7);
     write('==|>>>>'); }

     //ANIMASI 2
     gotoXY(50,5);
     writeln('*');
     gotoXY(49,6);
     writeln('***');
     gotoXY(50,7);
     writeln('|');
     gotoXY(48,7);
     writeln('--');
     gotoXY(51,7);
     writeln('--');
     gotoXY(49,8);
     writeln('/');
     gotoXY(51,8);
     writeln('\');
     gotoXY(48,9);
     writeln('/');
     gotoXY(52,9);
     writeln('\');

     gotoXY(x,y);
     write('==|>>>>');delay(100);
     x:=x+1;
     until x=45;
     clrscr;
end; //end of procedure swordH

//Procedure Animasi Pedang Bot
procedure swordB();
var
   a,b:integer;
begin
     a:=42;
     b:=7;
     repeat
     clrscr;
     //ANIMASI 1
     gotoXY(10,5);
     writeln('*');
     gotoXY(9,6);
     writeln('***');
     gotoXY(10,7);
     writeln('|');
     gotoXY(8,7);
     writeln('--');
     gotoXY(11,7);
     writeln('--');
     gotoXY(9,8);
     writeln('/');
     gotoXY(11,8);
     writeln('\');
     gotoXY(8,9);
     writeln('/');
     gotoXY(12,9);
     writeln('\');

     //ANIMASI 2
     gotoXY(50,5);
     writeln('*');
     gotoXY(49,6);
     writeln('***');
     gotoXY(50,7);
     writeln('|');
     gotoXY(48,7);
     writeln('--');
     gotoXY(51,7);
     writeln('--');
     gotoXY(49,8);
     writeln('/');
     gotoXY(51,8);
     writeln('\');
     gotoXY(48,9);
     writeln('/');
     gotoXY(52,9);
     writeln('\');
     gotoXY(a,b);
     writeln('<<<<|==');delay(100);

     a:=a-1;
     until a=9;

end; //end of procedure swordB
end. //end of unit

