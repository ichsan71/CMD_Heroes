program iseng;
uses Crt;

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

end; // end of procedure

var 
  hero,monster,ex:String;
  i,x,pilihan,power,health,mp,Pmonster,mh,hasil,tips,j:Integer;
  //n:string;

begin
      kotak(1,1,80,3,cyan);
      writeln('---------------------------------GAME MONSTER---------------------------------');
      kotak(1,4,40,6,blue);
      Write('Masukan Nama Monster anda : ');ReadLn(hero);
      kotak(41,4,80,22,blue);
      WriteLn('Halo... ',hero);




      power:=100;
      health:=200;
      x:=0;
      repeat
            kotak(1,1,80,3,cyan);
            writeln('---------------------------------GAME MONSTER---------------------------------');
            //KOTAK TIPS
            randomize;
            tips:=random(2);
            if tips=0 then
               begin
                    kotak(1,22,80,24,cyan);
                    write('*Tips : Kegunaan Coin adalah untuk mengupgrade Power dan Health Monster Mu');
               end
            else if tips=1 then
                 begin
                      kotak(1,22,80,24,cyan);
                      write('*Tips : Upgrade Power dan Health kamu agar bisa memenangkan pertarungan');
                 end;

            kotak(1,4,40,6,red);
            WriteLn('1. Lihat Status Monster saya');
            kotak(1,7,40,9,red);
            WriteLn('2. Upgrade Power');
            kotak(1,10,40,12,red);
            WriteLn('3. Upgrade Health');
            kotak(1,13,40,15,red);
            writeln('4. Lawan Monster lain');
            kotak(1,16,40,18,red);
            WriteLn('5. Keluar Game');
            kotak(1,19,40,21,red);
            Write('Masukan Pilihan mu : ');readln(pilihan);

            
            if pilihan=1 then
              begin
                kotak(41,4,80,6,blue);
                writeln('Nama Monster : ',hero);
                kotak(41,7,80,9,blue);
                writeLn('Power : ', power,' Health : ', health);
                kotak(41,10,80,12,blue);
                writeln('Coin upgrade : ',x);
                kotak(41,13,80,15,blue);
                writeln('Tekan ENTER untuk melanjutkan...');
                readln;
                clrscr;
              end
            else if pilihan=4 then
              //ini Monster komputer
              begin
              randomize;
              Pmonster:=random(3);
             
              if Pmonster=0 then
                begin
                  monster:='Garong';
                  mp:=100;
                  mh:=100;
                  kotak(41,4,80,6,blue);
                  write('Kamu Melawan ', monster);delay(100);
                  kotak(41,7,80,9,blue);
                  write('Power : ',mp);delay(100);
                  kotak(41,10,80,12,blue);
                  write('Health : ',mh); delay(100);
                  kotak(41,13,80,15,blue);
                  writeln('Tekan ENTER untuk melanjutkan...');
                  readln;
                  clrscr;
                end 
              else if Pmonster=1 then
                begin
                  monster:='Oren';
                  mp:=200;
                  mh:=300;
                  kotak(41,4,80,6,blue);
                  write('Kamu Melawan ', monster);delay(100);
                  kotak(41,7,80,9,blue);
                  write('Power : ',mp);delay(100);
                  kotak(41,10,80,12,blue);
                  write('Health : ',mh);delay(100);
                  kotak(41,13,80,15,blue);
                  writeln('Tekan ENTER untuk melanjutkan...');
                  readln;
                  clrscr;
                end
              else if Pmonster=2 then
                begin
                  monster:='belang';
                  mp:=300;
                  mh:=400;
                  kotak(41,4,80,6,blue);
                  write('Kamu Melawan ', monster);delay(100);
                  kotak(41,7,80,9,blue);
                  write('Power : ',mp);delay(100);
                  kotak(41,10,80,12,blue);
                  write('Health : ',mh);delay(100);
                  kotak(41,13,80,15,blue);
                  writeln('Tekan ENTER untuk melanjutkan...');
                  readln;
                  clrscr;
                end;
               hasil:=power-mh;
                    if hasil>=0 then
                      begin
                        x:=x+1;
                        kotak(20,4,55,6,blue);
                        write(hero,': ', power,', ',health,' Vs ',monster,': ', mp,', ',mh);delay(100);
                        kotak(20,7,55,9,blue);
                        write('Yeay Kamu Menang');delay(100);
                        kotak(20,10,55,12,blue);
                        write('Horee dapat 1 coin upgrade');delay(100);
                        kotak(20,13,55,15,blue);
                        writeln('Tekan ENTER untuk melanjutkan...');
                        readln;
                        clrscr;
                      end
                    else if (power=mp) and (health=mh) then
                         begin
                              kotak(20,4,55,6,blue);
                              write(hero,': ', power,', ',health,' Vs ',monster,': ', mp,', ',mh);delay(100);
                              kotak(20,7,55,9,blue);
                              write('Seri!');delay(100);
                              kotak(20,13,55,15,blue);
                              write('Tekan ENTER untuk melanjutkan...');delay(100);
                              readln;
                              clrscr;
                         end
                    else
                      begin
                           kotak(20,4,55,6,blue);
                           write(hero,': ', power,', ',health,' Vs ',monster,': ', mp,', ',mh);delay(100);
                           kotak(20,7,55,9,blue);
                           write('Yahh kamu kalah');delay(100);
                           kotak(20,13,55,15,blue);
                           write('Tekan ENTER untuk melanjutkan...');delay(100);
                           readln;
                           clrscr;
                      end

                end
            else if pilihan=3 then
              begin
                   if x>0 then
                begin
                     kotak(41,4,80,6,blue);
                     health:=health+100;
                     writeln('Monster kamu bertambah health ',health);
                     x:=x-1;
                     kotak(41,7,80,9,blue);
                     writeln('Tekan ENTER untuk melanjutkan...');
                     readln;
                     clrscr;
                end
                else
                  begin
                       kotak(41,4,80,6,blue);
                       writeln('Kamu Harus mengalahkan Monster dulu');
                       kotak(41,7,80,9,blue);
                       writeln('Tekan ENTER untuk melanjutkan...');
                       readln;
                       clrscr;
                  end;

              end
            else if pilihan=2 then
              begin
                if x>0 then
                begin
                     power:=power+100;
                     kotak(41,4,80,6,blue);
                     writeln('Monster kamu bertambah power ',power);
                     x:=x-1;
                     kotak(41,7,80,9,blue);
                     writeln('Tekan ENTER untuk melanjutkan...');
                     readln;
                     clrscr;
                end
                else
                  begin
                       kotak(41,4,80,6,blue);
                       writeln('Kamu Harus mengalahkan Monster dulu');
                       kotak(41,7,80,9,blue);
                       writeln('Tekan ENTER untuk melanjutkan...');
                       readln;
                       clrscr;
                  end;
              end
            else
                begin
                     kotak(41,4,80,6,blue);
                     write('Apakah Kamu Yakin Ingin Keluar?[Y/N] ');readln(ex);
                     //clrscr;
                     ex:=upcase(ex);
                     if ex='Y' then
                        begin
                             pilihan:=5;
                             kotak(41,4,80,6,blue);
                             writeln('Dadahh');
                        end
                     else
                         begin
                              kotak(41,4,80,6,blue);
                              writeln('Cie galau');
                              pilihan:=1;
                         end;
                     //readln;
                     //clrscr;
                end;
            
            writeln();
            
      until (pilihan>4) or (pilihan<1);


end.
              
