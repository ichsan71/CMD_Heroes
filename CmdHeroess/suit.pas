unit suit;

interface
uses crt,ktk;
procedure GBK(Pplayer:char;var turn:byte);

implementation
//procedure Gunting kertas Batu
procedure GBK(Pplayer:char;var turn:byte);
var
   {INI VAR PROCEDURE 2}
   Pcom:char;
   angka:byte;
begin
     repeat
     //Input user
     Pplayer:=upcase(Pplayer);

     if Pplayer = 'B' then
        begin
             kotak(2,1,39,3,cyan);
             writeln('Anda Memilih Batu');delay(2000);
        end
     else if Pplayer = 'G' then
          begin
               kotak(2,1,39,3,cyan);
               writeln('Anda Memilih Gunting');delay(2000);
          end
     else if Pplayer = 'K' then
          begin
               kotak(2,1,39,3,cyan);
               writeln('Anda Memilih Kertas');delay(2000);
          end
     else
         begin
              kotak(2,1,39,3,cyan);
              writeln('Anda Memasukan Pilihan yang salah!');sound(1);delay(2000);
         end;
     //Pilihan Komputer
     randomize;
     angka:=random(3);

     if angka = 0 then
        Pcom:='B'
     else if angka = 1 then
          Pcom:='G'
     else
         Pcom:='K';

     if Pcom = 'B' then
        begin
             kotak(40,1,79,3,cyan);
             writeln('Komputer Memilih Batu');delay(2000);
        end
     else if Pcom = 'G' then
          begin
               kotak(40,1,79,3,cyan);
               writeln('Komputer Memilih Gunting');delay(2000);
          end
     else
         begin
              kotak(40,1,79,3,cyan);
              writeln('Komputer Memilih Kertas');delay(2000);
         end;

     //Peraturan
     if Pplayer = 'B' then
        if Pcom ='K' then
           begin
                kotak(2,1,79,3,cyan);
                writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang');delay(5000);
                turn:=1;
           end
        else if Pcom ='G' then
             begin
                  kotak(2,1,79,3,cyan);
                  writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang');delay(5000);
                  turn:=2;
             end
        else
            begin
                 kotak(2,1,79,3,cyan);
                 writeln('DRAW!!!!');delay(5000);
                 turn:=0;
            end;
      if Pplayer = 'G' then
        if Pcom ='B' then
           begin
                kotak(2,1,79,3,cyan);
                writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang');delay(5000);
                turn:=1;
           end
        else if Pcom ='K' then
             begin
                  kotak(2,1,79,3,cyan);
                  writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang');delay(5000);
                  turn:=2;
             end
        else
            begin
                 kotak(2,1,79,3,cyan);
                 writeln('DRAW!!!!');delay(5000);
                 turn:=0;
            end;

       if Pplayer = 'K' then
        if Pcom ='G' then
           begin
                kotak(2,1,79,3,cyan);
                writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang');delay(5000);
                turn:=1;
           end
        else if Pcom ='B' then
             begin
                  kotak(2,1,79,3,cyan);
                  writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang');delay(5000);
                  turn:=2;
             end
        else
            begin
                 kotak(2,1,79,3,cyan);
                 writeln('DRAW!!!!');delay(5000);
                 turn:=0;
            end;
     //clrscr;
     until (turn=0) or (turn=1) or (turn=2) ;
end; // End of procedure 2
end. // end of unit

