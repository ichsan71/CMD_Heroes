program Game;
uses crt;

procedure kotak(x1,y1,x2,y2,latar:byte);
var
   i:byte;
begin
     textbackground(latar);
     window(x1,y1,x2,y2);// seting windows aktif
     clrscr;// clear screen sesuai ukuran windows
     window(1,1,80,25);// kembalikan ke windows biasa
     gotoxy(x1,y1);write(#218);
     for i:=x1+1 to x2-1 do
     begin
          gotoxy(i,y1);write(#196);
     end;
     gotoxy(x2,y1);write(#191);
     for i:=y1+1 to y2-1 do
     begin
          gotoxy(x2,i);write(#179);
     end;
     gotoxy(x2,y2);write(#217);
     for i:=x2-1 downto x1+1  do
     begin
          gotoxy(i,y2);write(#196);
     end;
     gotoxy(x1,y2);write(#192);
     for i:=y2-1 downto y1+1  do
     begin
          gotoxy(x1,i);write(#179);
     end;

end;

var
   num:integer;
begin
     kotak(10,5,70,7,green);
     write('Masukan Angka : ');readln(num);
     kotak(10,8,70,10,green);
     writeln(num);

     readln;
end.
