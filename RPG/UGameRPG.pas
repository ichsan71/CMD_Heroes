program CMD_Heroes;
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

end; // end of procedure

//procedure Gunting kertas Batu
procedure GBK(Pplayer:string);
var
   Pcom:string;
   angka,turn:integer;
begin
     repeat

     //Input user
     //write('Masukan [B,G,K] : ');readln(Pplayer);
     Pplayer:=upcase(Pplayer);

     if Pplayer = 'B' then
        writeln('Anda Memilih Batu')
     else if Pplayer = 'G' then
          writeln('Anda Memilih Gunting')
     else if Pplayer = 'K' then
          writeln('Anda Memilih Kertas')
     else
         writeln('Anda Memasukan Pilihan yang salah!');

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
        writeln('Komputer Memilih Batu')
     else if Pcom = 'G' then
          writeln('Komputer Memilih Gunting')
     else
          writeln('Komputer Memilih Kertas');

     //Peraturan
     if Pplayer = 'B' then
        if Pcom ='K' then
           begin
                writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang');
                turn:=1;
           end
        else if Pcom ='G' then
             begin
                  writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang');
                  turn:=2;
             end
        else
            begin
                 writeln('DRAW!!!!');delay(100);
                 clrscr;
            end;
      if Pplayer = 'G' then
        if Pcom ='B' then
           begin
                writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang');
                turn:=1;
           end
        else if Pcom ='K' then
             begin
                  writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang');
                  turn:=2;
             end
        else
            begin
                 writeln('DRAW!!!!');delay(100);
                 clrscr;
            end;

       if Pplayer = 'K' then
        if Pcom ='G' then
           begin
                writeln('Komputer Win! Kamu Lose!, Komputer Akan Menyerang');
                turn:=1;
           end
        else if Pcom ='B' then
             begin
                  writeln('Komputer Lose! Kamu Win!, Kamu Akan Menyerang');
                  turn:=2;
             end
        else
            begin
                 writeln('DRAW!!!!');delay(100);
                 clrscr;
            end;
     until Pcom<>Pplayer;
     readln;

end; // End of procedure 2

var
   //var User
   hero:string;
   pilihan_GBK:char;
   pilihan_H:char;
   pilihan_M,turn,pilih_sk:byte;
   Health_h,skill_1h,skill_2h,skill_3h:integer;
   hasil:integer;

   //var bot
   Health_b,skill_1b,skill_2b,skill_3b:integer;
   H_bot:byte;
   hero_b:string;




begin
     repeat
     clrscr;

     //pilihan role hero
     kotak(1,5,30,7,yellow);
     writeln('1. Assassin');
     kotak(1,8,30,10,yellow);
     writeln('2. Mage');
     kotak(1,11,30,13,yellow);
     writeln('3. Archer');
     kotak(1,14,30,16,yellow);
     writeln('4. Warrior');

     //input user
     kotak(1,17,30,19,yellow);
     write('Pilih Hero Mu [1,2,3,4] : ');readln(hero);

     //if hero
     if hero='1' then
        begin
             hero:='Assassin';
             Health_h:=300;
             skill_1h:=50;
             skill_2h:=80;
             skill_3h:=120;

             kotak(31,5,80,7,cyan);
             writeln(hero,' Status');
             kotak(31,8,80,10,cyan);
             writeln('Health        : ',Health_h);
             kotak(31,11,80,13,cyan);
             writeln('Skill 1       : Execute (DMG: ',skill_1h,')');
             kotak(31,14,80,16,cyan);
             writeln('Skill 2       : Shadow Kill (DMG: ',skill_2h,')');
             kotak(31,17,80,19,cyan);
             writeln('Skill 3       : Soul eater (DMG: ',skill_3h,')');
        end
     else if hero='2' then
          begin
               hero:='Mage';
               Health_h:=350;
               skill_1h:=30;
               skill_2h:=50;
               skill_3h:=80; //Nambahin health ini yaaa

               kotak(31,5,80,7,cyan);
               writeln(hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health      : ', Health_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1     : love waves (DMG: ',skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2     : Power From Nature (DMG: ',skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3     : Holy Healing (HEAL: ',skill_3h,')');
          end
     else if hero='3' then
          begin
               hero:='Archer';
               Health_h:=300;
               skill_1h:=45;
               skill_2h:=75;
               skill_3h:=125;

               kotak(31,5,80,7,cyan);
               writeln(hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health      : ', Health_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1     : Sun Arrow (DMG: ',skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2     : Arrow Of Sun Burst (DMG: ',skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3     : Rain Of Arrows (DMG: ',skill_3h,')');
          end
    else if hero='4' then
          begin
               hero:='Warrior';
               Health_h:=500;
               skill_1h:=20;
               skill_2h:=40;
               skill_3h:=80;

               kotak(31,5,80,7,cyan);
               writeln(hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health      : ', Health_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1     : Whirling Slash (DMG: ',skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2     : Dual Sword (DMG: ',skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3     : Heavy Sword (DMG: ',skill_3h,')');
          end;
          kotak(31,20,80,22,cyan);
          write('Apakah Kamu yakin memilih Hero ini? [Y/N] : ');readln(pilihan_H);
          pilihan_H:=upcase(pilihan_H);
    until pilihan_H='Y';

    //Menu
    clrscr;
    kotak(20,1,60,3,cyan);
    writeln('_Selamat Datang ',hero,' di CMD Heroes_');
    kotak(20,4,60,6,cyan);
    writeln('1. Fight');
    kotak(20,7,60,9,cyan);
    writeln('2. Cek Status');
    kotak(20,10,60,12,cyan);
    writeln('3. Upgrade Status');
    kotak(20,13,60,15,cyan);
    writeln('4. Exit');
    kotak(20,16,60,18,cyan);
    write('Masukan Pilihan [1,2,3,4] : ');readln(pilihan_M);

    //bot
    if pilihan_M=1 then
       begin
              clrscr;
              randomize;
              H_bot:=random(4);
             
              if H_bot=0 then
                begin
                   hero_b:='Assasin';
                   Health_b:=300;
                   skill_1b:=50;
                   skill_2b:=80;
                   skill_3b:=120;

                   kotak(25,5,65,7,cyan);
                   writeln('Kamu Melawan ',hero_b);
                   kotak(25,8,65,10,cyan);
                   writeln('Health        : ',Health_b);
                   kotak(25,11,65,13,cyan);
                   writeln('Skill 1       : Execute (DMG: ',skill_1b,')');
                   kotak(25,14,65,16,cyan);
                   writeln('Skill 2       : Shadow Kill (DMG: ',skill_2b,')');
                   kotak(25,17,65,19,cyan);
                   writeln('Skill 3       : Soul eater (DMG: ',skill_3b,')');
                end 
              else if H_bot=1 then
                begin
                  hero_b:='Mage';
                  Health_b:=350;
                  skill_1b:=30;
                  skill_2b:=50;
                  skill_3b:=80; //Nambahin health ini yaaa

                  kotak(25,5,65,7,cyan);
                  writeln('Kamu Melawan ',hero_b);
                  kotak(25,8,65,10,cyan);
                  writeln('Health      : ',Health_b);
                  kotak(25,11,65,13,cyan);
                  writeln('Skill 1     : love waves (DMG: ',skill_1b,')');
                  kotak(25,14,65,16,cyan);
                  writeln('Skill 2     : Power From Nature (DMG: ',skill_2b,')');
                  kotak(25,17,65,19,cyan);
                  writeln('Skill 3     : Holy Healing (HEAL: ',skill_3b,')');
                end
              else if H_bot=2 then
                begin
                     hero_b:='Archer';
                     Health_b:=300;
                     skill_1b:=45;
                     skill_2b:=75;
                     skill_3b:=125;

                     kotak(25,5,65,7,cyan);
                     writeln('Kamu Melawan ',hero_b);
                     kotak(25,8,65,10,cyan);
                     writeln('Health      : ',Health_b);
                     kotak(25,11,65,13,cyan);
                     writeln('Skill 1     : Sun Arrow (DMG: ',skill_1b,')');
                     kotak(25,14,65,16,cyan);
                     writeln('Skill 2     : Arrow Of Sun Burst (DMG: ',skill_2b,')');
                     kotak(25,17,65,19,cyan);
                     writeln('Skill 3     : Rain Of Arrows (DMG: ',skill_3b,')');

                end
                else if H_bot=3 then
                begin
                     hero_b:='Warrior';
                     Health_b:=500;
                     skill_1b:=20;
                     skill_2b:=40;
                     skill_3b:=80;

                     kotak(25,5,65,7,cyan);
                     writeln('Kamu Melawan ', hero_b);
                     kotak(25,8,65,10,cyan);
                     writeln('Health      : ',health_b);
                     kotak(25,11,65,13,cyan);
                     writeln('Skill 1     : Whirling Slash (DMG: ',skill_1b,')');
                     kotak(25,14,65,16,cyan);
                     writeln('Skill 2     : Dual Sword (DMG: ',skill_2b,')');
                     kotak(25,17,65,19,cyan);
                     writeln('Skill 3     : Heavy Sword (DMG: ',skill_3b,')');
                end;
                kotak(25,20,65,22,cyan);
                write('Tekan Enter Untuk Melanjutkan...');readln;

                clrscr;
                //mulai fight
                repeat
                      write('Masukan Pilihan [G,B,K] : ');readln(pilihan_GBK);
                      GBK(pilihan_GBK);

                      //Turn
                      if (turn=2) then
                         begin
                              //Pilih skill Hero
                              if hero='1' then
                                 begin
                                      writeln('1. Skill 1       : Execute (DMG: ',skill_1h,')');
                                      writeln('1. Skill 2       : Shadow Kill (DMG: ',skill_2h,')');
                                      writeln('1. Skill 3       : Soul eater (DMG: ',skill_3h,')');
                                      writeln('Pilih Skill Untuk Menyerang! [1,2,3] : ');readln(pilih_sk);

                                      if pilih_sk=1 then
                                         begin
                                            hasil:=skill_1h-health_b;
                                            writeln('Health Bot sisa ',hasil);
                                         end
                                      else if pilih_sk=2 then
                                           begin
                                              hasil:=skill_2h-health_b;
                                              writeln('Health Bot sisa ',hasil);
                                           end
                                      else if pilih_sk=3 then
                                           begin
                                              hasil:=skill_3h-health_b;
                                              writeln('Health Bot sisa ',hasil);
                                           end;

                                 end
                              else if hero='2' then
                                   begin
                                        writeln('1. Skill 1       : love waves (DMG: ',skill_1h,')');
                                        writeln('1. Skill 2       : Power From Nature (DMG: ',skill_2h,')');
                                        writeln('1. Skill 3       : Holy Healing (HEAL: ',skill_3h,')');
                                        writeln('Pilih Skill Untuk Menyerang! [1,2,3] : ');readln();
                                   end



                              {if h_bot=0 then
                                 begin
                                       randomize;
                                       skill_b:=random(3);

                                       if skill_b=0 then
                                          begin
                                               Health_h:=Health_h-skill_1;
                                               writeln(Health_h);
                                          end
                                       else if skill_b=1 then
                                          begin
                                               Health_h:=Health_h-skill_2;
                                               writeln(Health_h);
                                          end
                                       else if skill_b=2 then
                                          begin
                                               Health_h:=Health_h-skill_3;
                                               writeln(Health_h);
                                          end;

                                 end}
                         end



                until (health_H=0) or (health_B=0);
       end;
       //else if pilihan_M=2




readln;
end.

