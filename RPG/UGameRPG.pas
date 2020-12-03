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

end; // end of procedure 1

var
   { INI ADALAH VAR DARI FILE UTAMA }

   //var User
   nama_hero:string;
   pilihan_GBK:char;
   pilihan_H:char;
   pilihan_M,hero,pilih_sk:byte;
   Health_h,skill_1h,skill_2h,skill_3h:integer;
   turn:byte;

   //var bot
   Health_b,skill_1b,skill_2b,skill_3b:integer;
   random_skill_bot,H_bot:byte;
   hero_b:string;

//procedure Gunting kertas Batu
procedure GBK(Pplayer:char);
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
             kotak(2,1,35,3,cyan);
             writeln('Anda Memilih Batu');delay(2000);
        end
     else if Pplayer = 'G' then
          begin
               kotak(2,1,35,3,cyan);
               writeln('Anda Memilih Gunting');delay(2000);
          end
     else if Pplayer = 'K' then
          begin
               kotak(2,1,35,3,cyan);
               writeln('Anda Memilih Kertas');delay(2000);
          end
     else
         begin
              kotak(2,1,35,3,cyan);
              writeln('Anda Memasukan Pilihan yang salah!');delay(2000);
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
             kotak(42,1,79,3,cyan);
             writeln('Komputer Memilih Batu');delay(2000);
        end
     else if Pcom = 'G' then
          begin
               kotak(42,1,79,3,cyan);
               writeln('Komputer Memilih Gunting');delay(2000);
          end
     else
         begin
              kotak(42,1,79,3,cyan);
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
             end;
        {else
            begin
                 kotak(15,10,65,12,red);
                 writeln('DRAW!!!!');delay(100);
                 turn:=0;
                 clrscr;
            end;}
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
             end;
        {else
            begin
                 kotak(15,10,60,12,red);
                 writeln('DRAW!!!!');delay(100);
                 turn:=0;
                 clrscr;
            end;}

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
             end;
        {else
            begin
                 kotak(20,10,60,12,red);
                 writeln('DRAW!!!!');delay(100);
                 turn:=0;
                 clrscr;
            end;}
     //clrscr;
     until Pcom<>Pplayer;


end; // End of procedure 2

begin
     { INI BODY DARI FILE UTAMA}
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

     //Pilihan Hero User
     if hero=1 then
        begin
             nama_hero:='Assassin';
             Health_h:=300;
             skill_1h:=50;
             skill_2h:=80;
             skill_3h:=120;

             kotak(31,5,80,7,cyan);
             writeln(nama_hero,' Status');
             kotak(31,8,80,10,cyan);
             writeln('Health        : ',Health_h);
             kotak(31,11,80,13,cyan);
             writeln('Skill 1       : Execute (DMG: ',skill_1h,')');
             kotak(31,14,80,16,cyan);
             writeln('Skill 2       : Shadow Kill (DMG: ',skill_2h,')');
             kotak(31,17,80,19,cyan);
             writeln('Skill 3       : Soul eater (DMG: ',skill_3h,')');
        end
     else if hero=2 then
          begin
               nama_hero:='Mage';
               Health_h:=350;
               skill_1h:=30;
               skill_2h:=50;
               skill_3h:=80; //Nambahin health ini yaaa

               kotak(31,5,80,7,cyan);
               writeln(nama_hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health      : ', Health_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1     : love waves (DMG: ',skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2     : Power From Nature (DMG: ',skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3     : Holy Healing (HEAL: ',skill_3h,')');
          end
     else if hero=3 then
          begin
               nama_hero:='Archer';
               Health_h:=300;
               skill_1h:=45;
               skill_2h:=75;
               skill_3h:=125;

               kotak(31,5,80,7,cyan);
               writeln(nama_hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health      : ', Health_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1     : Sun Arrow (DMG: ',skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2     : Arrow Of Sun Burst (DMG: ',skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3     : Rain Of Arrows (DMG: ',skill_3h,')');
          end
    else if hero=4 then
          begin
               nama_hero:='Warrior';
               Health_h:=500;
               skill_1h:=20;
               skill_2h:=40;
               skill_3h:=80;

               kotak(31,5,80,7,cyan);
               writeln(nama_hero,' Status');
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
    until (pilihan_H='Y') and (hero>0);

    {MENU GAME}
    clrscr;
    kotak(20,1,60,3,cyan);
    writeln('_Selamat Datang ',nama_hero,' di CMD Heroes_');
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

                   kotak(20,5,60,7,cyan);
                   writeln('Kamu Melawan ',hero_b);
                   kotak(20,8,60,10,cyan);
                   writeln('Health        : ',Health_b);
                   kotak(20,11,60,13,cyan);
                   writeln('Skill 1       : Execute(DMG: ',skill_1b,')');
                   kotak(20,14,60,16,cyan);
                   writeln('Skill 2       : Shadow Kill(DMG: ',skill_2b,')');
                   kotak(20,17,60,19,cyan);
                   writeln('Skill 3       : Soul eater(DMG: ',skill_3b,')');

                end 
              else if H_bot=1 then
                begin
                  hero_b:='Mage';
                  Health_b:=350;
                  skill_1b:=30;
                  skill_2b:=50;
                  skill_3b:=80; //Nambahin health ini yaaa

                  kotak(20,5,60,7,cyan);
                  writeln('Kamu Melawan ',hero_b);
                  kotak(20,8,60,10,cyan);
                  writeln('Health      : ',Health_b);
                  kotak(20,11,60,13,cyan);
                  writeln('Skill 1     : love waves(DMG: ',skill_1b,')');
                  kotak(20,14,60,16,cyan);
                  writeln('Skill 2     : Power Nature(DMG: ',skill_2b,')');
                  kotak(20,17,60,19,cyan);
                  writeln('Skill 3     : Holy Healing(HEAL: ',skill_3b,')');
                end
              else if H_bot=2 then
                begin
                     hero_b:='Archer';
                     Health_b:=300;
                     skill_1b:=45;
                     skill_2b:=75;
                     skill_3b:=125;

                     kotak(20,5,60,7,cyan);
                     writeln('Kamu Melawan ',hero_b);
                     kotak(20,8,60,10,cyan);
                     writeln('Health      : ',Health_b);
                     kotak(20,11,60,13,cyan);
                     writeln('Skill 1     : Sun Arrow(DMG: ',skill_1b,')');
                     kotak(20,14,60,16,cyan);
                     writeln('Skill 2     : Sun Burst Arrow(DMG: ',skill_2b,')');
                     kotak(20,17,60,19,cyan);
                     writeln('Skill 3     : Rain Of Arrows(DMG: ',skill_3b,')');

                end
                else if H_bot=3 then
                begin
                     hero_b:='Warrior';
                     Health_b:=500;
                     skill_1b:=20;
                     skill_2b:=40;
                     skill_3b:=80;

                     kotak(20,5,60,7,cyan);
                     writeln('Kamu Melawan ', hero_b);
                     kotak(20,8,60,10,cyan);
                     writeln('Health      : ',health_b);
                     kotak(20,11,60,13,cyan);
                     writeln('Skill 1     : Whirling Slash(DMG: ',skill_1b,')');
                     kotak(20,14,60,16,cyan);
                     writeln('Skill 2     : Dual Sword(DMG: ',skill_2b,')');
                     kotak(20,17,60,19,cyan);
                     writeln('Skill 3     : Heavy Sword(DMG: ',skill_3b,')');
                end;
                kotak(20,20,60,22,cyan);
                write('Tekan Enter Untuk Melanjutkan...');readln;

                clrscr;

                {MULAI FIGHT}
                repeat
                      kotak(2,1,35,3,cyan);
                      write('Masukan Pilihan [G,B,K] : ');readln(pilihan_GBK);
                      GBK(pilihan_GBK);

                      //Turn dan random skill Hero Bot
                      if (H_bot=0) and (turn=1)  then
                         begin
                              randomize;
                              random_skill_bot:=random(3);delay(1000);

                              kotak(42,5,79,7,yellow);
                              writeln(hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. Execute     (DMG: ',skill_1b,')');
                              kotak(42,11,79,13,yellow);
                              writeln('2. Shadow Kill (DMG: ',skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Soul eater  (DMG: ',skill_3b,')');



                              if random_skill_bot=0 then
                                 begin
                                      random_skill_bot:=1;
                                      Health_h:=Health_h-skill_1b;
                                 end
                              else if random_skill_bot=1 then
                                   begin
                                        random_skill_bot:=2;
                                        Health_h:=Health_h-skill_2b;
                                   end
                              else if random_skill_bot=2 then
                                   begin
                                        random_skill_bot:=3;
                                        Health_h:=Health_h-skill_3b;
                                   end;
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);
                         end

                      else if (H_bot=1) and (turn=1)  then
                         begin
                              randomize;
                              random_skill_bot:=random(3);delay(1000);

                              kotak(42,5,79,7,yellow);
                              writeln('Kamu Melawan ',hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. love waves        (DMG: ',skill_1b,')');
                              kotak(42,11,13,13,yellow);
                              writeln('2. Power From Nature (DMG: ',skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Holy Healing      (HEAL: ',skill_3b,')');

                              if random_skill_bot=0 then
                                 begin
                                      random_skill_bot:=1;
                                      Health_h:=Health_h-skill_1b;
                                 end
                              else if random_skill_bot=1 then
                                   begin
                                        random_skill_bot:=2;
                                        Health_h:=Health_h-skill_2b;
                                   end
                              else if random_skill_bot=2 then
                                   begin
                                        random_skill_bot:=3;
                                        Health_b:=Health_b+skill_3b;
                                   end;
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);
                         end

                      else if (H_bot=2) and (turn=1)  then
                         begin
                              randomize;
                              random_skill_bot:=random(3);delay(1000);

                              kotak(42,5,79,7,yellow);
                              writeln('Kamu Melawan ',hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. Sun Arrow          (DMG: ',skill_1b,')');
                              kotak(42,11,79,13,yellow);
                              writeln('2. Arrow Of Sun Burst (DMG: ',skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Rain Of Arrows     (DMG: ',skill_3b,')');

                              if random_skill_bot=0 then
                                 begin
                                      random_skill_bot:=1;
                                      Health_h:=Health_h-skill_1b;
                                 end
                              else if random_skill_bot=1 then
                                   begin
                                        random_skill_bot:=2;
                                        Health_h:=Health_h-skill_2b;
                                   end
                              else if random_skill_bot=2 then
                                   begin
                                        random_skill_bot:=3;
                                        Health_h:=Health_h-skill_3b;
                                   end;
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);

                         end

                      else if (H_bot=3) and (turn=1)  then
                         begin
                              randomize;
                              random_skill_bot:=random(3);delay(1000);

                              kotak(42,5,79,7,yellow);
                              writeln('Kamu Melawan ',hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. Whirling Slash (DMG: ',skill_1b,')');
                              kotak(42,11,79,13,yellow);
                              writeln('2. Dual Sword     (DMG: ',skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Heavy Sword    (DMG: ',skill_3b,')');

                              if random_skill_bot=0 then
                                 begin
                                      random_skill_bot:=1;
                                      Health_h:=Health_h-skill_1b;
                                 end
                              else if random_skill_bot=1 then
                                   begin
                                        random_skill_bot:=2;
                                        Health_h:=Health_h-skill_2b;
                                   end
                              else if random_skill_bot=2 then
                                   begin
                                        random_skill_bot:=3;
                                        Health_h:=Health_h-skill_3b;
                                   end;
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);
                         end;

                              //Turn dan Pilih skill Hero user
                              if (hero=1) and (turn=2)  then
                                 begin
                                      kotak(2,5,35,7,yellow);
                                      writeln(nama_hero);
                                      kotak(2,8,35,10,yellow);
                                      writeln('1. Execute     (DMG: ',skill_1h,')');
                                      kotak(2,11,35,13,yellow);
                                      writeln('2. Shadow Kill (DMG: ',skill_2h,')');
                                      kotak(2,14,35,16,yellow);
                                      writeln('3. Soul eater  (DMG: ',skill_3h,')');
                                      kotak(2,17,35,19,yellow);
                                      write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);

                                      if pilih_sk=1 then
                                         begin
                                            Health_b:=Health_b-skill_1h;
                                         end
                                      else if pilih_sk=2 then
                                           begin
                                              Health_b:=Health_b-skill_2h;
                                           end
                                      else if pilih_sk=3 then
                                           begin
                                              Health_b:=Health_b-skill_3h;
                                           end
                                      else
                                          begin
                                               kotak(2,17,35,19,yellow);
                                               writeln('Kamu Memasukan Pilihan yang salah!');
                                          end;
                                 end

                              else if (hero=2) and (turn=2) then
                                   begin
                                        kotak(2,5,35,7,yellow);
                                        writeln(nama_hero);
                                        kotak(2,8,35,10,yellow);
                                        writeln('1. love waves        (DMG: ',skill_1h,')');
                                        kotak(2,11,35,13,yellow);
                                        writeln('2. Power From Nature (DMG: ',skill_2h,')');
                                        kotak(2,14,35,16,yellow);
                                        writeln('3. Holy Healing      (HEAL: ',skill_3h,')');
                                        kotak(2,17,35,19,yellow);
                                        write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);
                                        if pilih_sk=1 then
                                         begin
                                            Health_b:=Health_b-skill_1h;
                                         end
                                        else if pilih_sk=2 then
                                           begin
                                              Health_b:=Health_b-skill_2h;
                                           end
                                        else if pilih_sk=3 then
                                           begin
                                              Health_h:=Health_h+skill_3h;
                                           end
                                        else
                                            begin
                                                 kotak(2,17,35,19,yellow);
                                                 writeln('Kamu Memasukan Pilihan yang salah!');
                                            end;
                                   end

                              else if (hero=3) and (turn=2) then
                                   begin
                                        kotak(2,5,35,7,yellow);
                                        writeln(nama_hero);
                                        kotak(2,8,35,10,yellow);
                                        writeln('1. Sun Arrow          (DMG: ',skill_1h,')');
                                        kotak(2,11,35,13,yellow);
                                        writeln('2. Arrow Of Sun Burst (DMG: ',skill_2h,')');
                                        kotak(2,14,35,16,yellow);
                                        writeln('3. Rain Of Arrows     (DMG: ',skill_3h,')');
                                        kotak(2,17,35,19,yellow);
                                        write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);
                                        if pilih_sk=1 then
                                           begin
                                                Health_b:=Health_b-skill_1h;
                                           end
                                        else if pilih_sk=2 then
                                             begin
                                                  Health_b:=Health_b-skill_2h;
                                             end
                                        else if pilih_sk=3 then
                                             begin
                                                  Health_b:=Health_b-skill_3h;
                                             end
                                        else
                                            begin
                                                 kotak(2,17,35,19,yellow);
                                                 writeln('Kamu Memasukan Pilihan yang salah!');
                                            end;
                                   end

                              else if (hero=4) and (turn=2) then
                                   begin
                                        kotak(2,5,35,7,yellow);
                                        writeln(nama_hero);
                                        kotak(2,8,35,10,yellow);
                                        writeln('1. Whirling Slash (DMG: ',skill_1h,')');
                                        kotak(2,11,35,13,yellow);
                                        writeln('2. Dual Sword     (DMG: ',skill_2h,')');
                                        kotak(2,14,35,16,yellow);
                                        writeln('3. Heavy Sword    (DMG: ',skill_3h,')');
                                        kotak(2,17,35,19,yellow);
                                        write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);
                                        if pilih_sk=1 then
                                           begin
                                                Health_b:=Health_b-skill_1h;
                                           end
                                        else if pilih_sk=2 then
                                             begin
                                                  Health_b:=Health_b-skill_2h;
                                             end
                                        else if pilih_sk=3 then
                                             begin
                                                  Health_b:=Health_b-skill_3h;
                                             end
                                        else
                                            begin
                                                 kotak(2,17,35,19,yellow);
                                                 writeln('Kamu Memasukan Pilihan yang salah!');
                                            end;
                                   end;

                      kotak(2,20,35,22,red);
                      writeln('Sisa Health Mu  : ',Health_h);
                      kotak(42,20,79,22,red);
                      writeln('Sisa Health Bot : ',Health_b);
                      kotak(2,23,79,25,blue);
                      write('Press ANY key...');readkey;
                      //clrscr;

                until (Health_h<=0) or (Health_b<=0);
                writeln('Pertempuran telah berakhir');
                readln;
       end;
       //else if pilihan_M=2




readln;
end.

