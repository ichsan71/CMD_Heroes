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
   x,pilihan_M,hero,pilih_sk:byte;
   t,j,coin,Health_h,mana_h,skill_1h,skill_2h,skill_3h,mana_skill_1h,mana_skill_2h,mana_skill_3h,pil_upgrade,H_Health_h,H_mana_h:integer;
   turn:byte;

   //var bot
   mana_b,H_mana_b,Health_b,skill_1b,skill_2b,skill_3b,mana_skill_1b,mana_skill_2b,mana_skill_3b:integer;
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

begin
     { INI BODY DARI FILE UTAMA}
     coin:=5;//Ini Coin untuk upgrade skill

     kotak(2,2,79,24,yellow);
     clrscr;
     kotak(2,2,79,24,cyan);
     gotoxy(30,12);
     write('Selamat Datang Heroes');
     delay(2000);
     clrscr;
     kotak(2,2,79,24,yellow);
     clrscr;
     kotak(2,2,79,24,cyan);
     gotoxy(30,12);
     write('Welcome to CMD HEROES');
     delay(3000);
     clrscr;
     gotoxy(37,12);
     write('Loading');
     j:=38;
     for t:=1 to 3 do
         begin
              j:=j+1;
              gotoxy(j,13);
              write('*');
              delay(900);
         end;
     {gotoxy(,25)
     writeln('Tekan Enter Untuk Melanjutkan');
     readln; }
     delay(2000);
     clrscr;

     repeat//repeat pilihan hero
     kotak(1,1,80,25,yellow);
     clrscr;

     //pilihan role hero
     kotak(1,1,80,4,cyan);
     writeln('__________________________________CMD Heroes__________________________________');
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
             mana_h:=150;
             skill_1h:=50;
             mana_skill_1h:=10;// ini akan bertambah jika menyerang
             skill_2h:=80;
             mana_skill_2h:=40;
             skill_3h:=120;
             mana_skill_3h:=90;

             kotak(31,5,80,7,cyan);
             writeln(nama_hero,' Status');
             kotak(31,8,80,10,cyan);
             writeln('Health : ',Health_h,', Mana : ',mana_h);
             kotak(31,11,80,13,cyan);
             writeln('Skill 1 : Execute (DMG: ',skill_1h,' Mana: +',mana_skill_1h,')');
             kotak(31,14,80,16,cyan);
             writeln('Skill 2 : Shadow Kill (DMG: ',skill_2h,' Mana: ',mana_skill_2h,')');
             kotak(31,17,80,19,cyan);
             writeln('Skill 3 : Soul eater (DMG: ',skill_3h,' Mana: ',mana_skill_3h,')');
        end
     else if hero=2 then
          begin
               nama_hero:='Mage';
               Health_h:=350;
               mana_h:=250;
               skill_1h:=30;
               mana_skill_1h:=10;
               skill_2h:=50;
               mana_skill_2h:=60;
               skill_3h:=80; //Nambahin health ini yaaa
               mana_skill_3h:=130;

               kotak(31,5,80,7,cyan);
               writeln(nama_hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health : ', Health_h,', Mana : ',mana_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1 : love waves (DMG: ',skill_1h,' Mana: +',mana_skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2 : Power From Nature (DMG: ',skill_2h,' Mana: ',mana_skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3 : Holy Healing (HEAL: ',skill_3h,' Mana: ',mana_skill_3h,')');
          end
     else if hero=3 then
          begin
               nama_hero:='Archer';
               Health_h:=300;
               mana_h:=150;
               skill_1h:=45;
               mana_skill_1h:=10;
               skill_2h:=75;
               mana_skill_2h:=30;
               skill_3h:=125;
               mana_skill_3h:=100;

               kotak(31,5,80,7,cyan);
               writeln(nama_hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health : ', Health_h,', Mana : ',mana_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1 : Sun Arrow (DMG: ',skill_1h,' Mana: +',mana_skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2 : Arrow Of Sun Burst (DMG: ',skill_2h,' Mana: ',mana_skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3 : Rain Of Arrows (DMG: ',skill_3h,' Mana: ',mana_skill_3h,')');
          end
    else if hero=4 then
          begin
               nama_hero:='Warrior';
               Health_h:=500;
               mana_h:=150;
               skill_1h:=20;
               mana_skill_1h:=10;
               skill_2h:=40;
               mana_skill_2h:=30;
               skill_3h:=80;
               mana_skill_3h:=60;

               kotak(31,5,80,7,cyan);
               writeln(nama_hero,' Status');
               kotak(31,8,80,10,cyan);
               writeln('Health : ', Health_h,', Mana : ',mana_h);
               kotak(31,11,80,13,cyan);
               writeln('Skill 1 : Whirling Slash (DMG: ',skill_1h,' Mana: +',mana_skill_1h,')');
               kotak(31,14,80,16,cyan);
               writeln('Skill 2 : Dual Sword (DMG: ',skill_2h,' Mana: ',mana_skill_2h,')');
               kotak(31,17,80,19,cyan);
               writeln('Skill 3 : Heavy Sword (DMG: ',skill_3h,' Mana: ',mana_skill_3h,')');
          end;
          kotak(31,20,80,22,cyan);
          write('Apakah Kamu yakin memilih Hero ini? [Y/N] : ');readln(pilihan_H);
          pilihan_H:=upcase(pilihan_H);

    until (pilihan_H='Y') and (hero>0);

    {MENU GAME}
repeat //repeat menu

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
                   mana_b:=150;
                   skill_1b:=50;
                   mana_skill_1b:=10;// ini mana akan bertambah
                   skill_2b:=80;
                   mana_skill_2b:=40;
                   skill_3b:=120;
                   mana_skill_3b:=90;

                   kotak(20,5,60,7,cyan);
                   writeln('Kamu Melawan ',hero_b);
                   kotak(20,8,60,10,cyan);
                   writeln('Health  : ',Health_b,', Mana : ',mana_b);
                   kotak(20,11,60,13,cyan);
                   writeln('Skill 1 : Execute(DMG: ',skill_1b,', Mana: +',mana_skill_1b,')');
                   kotak(20,14,60,16,cyan);
                   writeln('Skill 2 : Shadow Kill(DMG: ',skill_2b,' Mana: ',mana_skill_2b,')');
                   kotak(20,17,60,19,cyan);
                   writeln('Skill 3 : Soul eater(DMG: ',skill_3b,' Mana: ',mana_skill_3b,')');

                end 
              else if H_bot=1 then
                begin
                  hero_b:='Mage';
                  Health_b:=350;
                  mana_b:=250;
                  skill_1b:=30;
                  mana_skill_1b:=10;// ini mana akan bertambah
                  skill_2b:=50;
                  mana_skill_2b:=60;
                  skill_3b:=80; //Nambahin health ini yaaa
                  mana_skill_3b:=130;

                  kotak(20,5,60,7,cyan);
                  writeln('Kamu Melawan ',hero_b);
                  kotak(20,8,60,10,cyan);
                  writeln('Health : ',Health_b,', Mana : ',mana_b);
                  kotak(20,11,60,13,cyan);
                  writeln('Skill 1 : love waves(DMG: ',skill_1b,' Mana: +',mana_skill_1b,')');
                  kotak(20,14,60,16,cyan);
                  writeln('Skill 2 : Power Nature(DMG: ',skill_2b,' Mana: ',mana_skill_2b,')');
                  kotak(20,17,60,19,cyan);
                  writeln('Skill 3 : Holy Healing(HEAL: ',skill_3b,' Mana: ',mana_skill_3b,')');
                end
              else if H_bot=2 then
                begin
                     hero_b:='Archer';
                     Health_b:=300;
                     mana_b:=150;
                     skill_1b:=45;
                     mana_skill_1b:=10;// ini mana akan bertambah
                     skill_2b:=75;
                     mana_skill_2b:=30;
                     skill_3b:=125;
                     mana_skill_3b:=100;

                     kotak(20,5,60,7,cyan);
                     writeln('Kamu Melawan ',hero_b);
                     kotak(20,8,60,10,cyan);
                     writeln('Health : ',Health_b,', Mana : ',mana_b);
                     kotak(20,11,60,13,cyan);
                     writeln('Skill 1 : Sun Arrow(DMG: ',skill_1b,' Mana: +',mana_skill_1b,')');
                     kotak(20,14,60,16,cyan);
                     writeln('Skill 2 : Sun Burst Arrow(DMG: ',skill_2b,' Mana: ',mana_skill_2b,')');
                     kotak(20,17,60,19,cyan);
                     writeln('Skill 3 : Rain Of Arrows(DMG: ',skill_3b,' Mana: ',mana_skill_3b,')');

                end
                else if H_bot=3 then
                begin
                     hero_b:='Warrior';
                     Health_b:=500;
                     mana_b:=150;
                     skill_1b:=20;
                     mana_skill_1b:=10;// ini mana akan bertambah
                     skill_2b:=40;
                     mana_skill_2b:=30;
                     skill_3b:=80;
                     mana_skill_3b:=60;

                     kotak(20,5,60,7,cyan);
                     writeln('Kamu Melawan ', hero_b);
                     kotak(20,8,60,10,cyan);
                     writeln('Health : ',health_b,', Mana : ',mana_b);
                     kotak(20,11,60,13,cyan);
                     writeln('Skill 1 : Whirling Slash(DMG: ',skill_1b,' Mana: +',mana_skill_1b,')');
                     kotak(20,14,60,16,cyan);
                     writeln('Skill 2 : Dual Sword(DMG: ',skill_2b,' Mana: ',mana_skill_2b,')');
                     kotak(20,17,60,19,cyan);
                     writeln('Skill 3 : Heavy Sword(DMG: ',skill_3b,' Mana: ',mana_skill_3b,')');
                end;
                kotak(20,20,60,22,cyan);
                write('Tekan Enter Untuk Melanjutkan...');readln;
                clrscr;

                {MULAI FIGHT}
                H_Health_h:=Health_h;// Variabel tambahan utk Health
                H_mana_h:=mana_h;
                H_mana_b:=mana_b;
                repeat
                      kotak(2,20,39,22,red);
                      writeln('Health  : ',H_Health_h,', Mana  : ',H_mana_h);
                      kotak(42,20,79,22,red);
                      writeln('Health Bot : ',Health_b,', Mana  : ',H_mana_b);
                      kotak(2,1,79,3,cyan);
                      write('Masukan Pilihan [G,B,K] : ');readln(pilihan_GBK);
                      GBK(pilihan_GBK);

                      // Pengkondisian jika DRAW user pilih lagi
                      if turn=0 then
                         begin
                              kotak(2,1,79,3,cyan);
                              write('Masukan Pilihan [G,B,K] : ');readln(pilihan_GBK);
                              GBK(pilihan_GBK);
                         end;

                      //if pilihan MENU Ke-1
                      // Pengkondisian Turn dan random skill Hero Bot
                      if (H_bot=0) and (turn=1)  then
                         begin
                              repeat
                              randomize;
                              random_skill_bot:=random(3);

                              kotak(42,5,79,7,yellow);
                              writeln('BOT ',hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. Execute (DMG: ',skill_1b,', Mana: +',mana_skill_1b,')');
                              kotak(42,11,79,13,yellow);
                              writeln('2. Shadow Kill (DMG: ',skill_2b,', Mana: ',mana_skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Soul eater (DMG: ',skill_3b,', Mana: ',mana_skill_3b,')');

                              if random_skill_bot=0 then
                                 begin
                                      x:=1;
                                      random_skill_bot:=1;
                                      H_Health_h:=H_Health_h-skill_1b;
                                      H_mana_b:=H_mana_b+mana_skill_1b;
                                 end
                              else if (random_skill_bot=1) and (H_mana_b>=40) then
                                   begin
                                        x:=2;
                                        random_skill_bot:=2;
                                        H_Health_h:=H_Health_h-skill_2b;
                                        H_mana_b:=H_mana_b-mana_skill_2b;
                                   end
                              else if (random_skill_bot=2) and (H_mana_b>=90)then
                                   begin
                                        x:=3;
                                        random_skill_bot:=3;
                                        H_Health_h:=H_Health_h-skill_3b;
                                        H_mana_b:=H_mana_b-mana_skill_3b;
                                   end;

                              until (x=1) or (x=2) or (x=3);
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);
                         end

                      else if (H_bot=1) and (turn=1)  then
                         begin
                              repeat
                              randomize;
                              random_skill_bot:=random(3);

                              kotak(42,5,79,7,yellow);
                              writeln('BOT ',hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. love waves (DMG: ',skill_1b,', Mana: +',mana_skill_1b,')');
                              kotak(42,11,79,13,yellow);
                              writeln('2. Power From Nature (DMG: ',skill_2b,', Mana: ',mana_skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Holy Healing (HEAL: ',skill_3b,', Mana: ',mana_skill_3b,')');

                              if random_skill_bot=0 then
                                 begin
                                      x:=1;
                                      random_skill_bot:=1;
                                      H_Health_h:=H_Health_h-skill_1b;
                                      H_mana_b:=H_mana_b+mana_skill_1b;
                                 end
                              else if (random_skill_bot=1) and (H_mana_b>=60) then
                                   begin
                                        x:=2;
                                        random_skill_bot:=2;
                                        H_Health_h:=H_Health_h-skill_2b;
                                        H_mana_b:=H_mana_b-mana_skill_2b;
                                   end
                              else if (random_skill_bot=2) and (H_mana_b>=130)then
                                   begin
                                        x:=3;
                                        random_skill_bot:=3;
                                        Health_b:=Health_b+skill_3b;
                                        H_mana_b:=H_mana_b-mana_skill_3b;
                                   end;

                              until (x=1) or (x=2) or (x=3);
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);
                         end

                      else if (H_bot=2) and (turn=1)  then
                         begin
                              repeat
                              randomize;
                              random_skill_bot:=random(3);

                              kotak(42,5,79,7,yellow);
                              writeln('BOT ',hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. Sun Arrow (DMG: ',skill_1b,', Mana: +',mana_skill_1b,')');
                              kotak(42,11,79,13,yellow);
                              writeln('2. Arrow Of Sun Burst (DMG: ',skill_2b,', Mana: ',mana_skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Rain Of Arrows (DMG: ',skill_3b,', Mana: ',mana_skill_3b,')');

                               if random_skill_bot=0 then
                                 begin
                                      x:=1;
                                      random_skill_bot:=1;
                                      H_Health_h:=H_Health_h-skill_1b;
                                      H_mana_b:=H_mana_b+mana_skill_1b;
                                 end
                              else if (random_skill_bot=1) and (H_mana_b>=30) then
                                   begin
                                        x:=2;
                                        random_skill_bot:=2;
                                        H_Health_h:=H_Health_h-skill_2b;
                                        H_mana_b:=H_mana_b-mana_skill_2b;
                                   end
                              else if (random_skill_bot=2) and (H_mana_b>=100)then
                                   begin
                                        x:=3;
                                        random_skill_bot:=3;
                                        H_Health_h:=H_Health_h-skill_3b;
                                        H_mana_b:=H_mana_b-mana_skill_3b;
                                   end;

                              until (x=1) or (x=2) or (x=3);
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);
                         end

                      else if (H_bot=3) and (turn=1)  then
                         begin
                              repeat
                              randomize;
                              random_skill_bot:=random(3);

                              kotak(42,5,79,7,yellow);
                              writeln('BOT ',hero_b);
                              kotak(42,8,79,10,yellow);
                              writeln('1. Whirling Slash (DMG: ',skill_1b,', Mana: +',mana_skill_1b,')');
                              kotak(42,11,79,13,yellow);
                              writeln('2. Dual Sword (DMG: ',skill_2b,', Mana: ',mana_skill_2b,')');
                              kotak(42,14,79,16,yellow);
                              writeln('3. Heavy Sword (DMG: ',skill_3b,', Mana: ',mana_skill_3b,')');

                              if random_skill_bot=0 then
                                 begin
                                      x:=1;
                                      random_skill_bot:=1;
                                      H_Health_h:=H_Health_h-skill_1b;
                                      H_mana_b:=H_mana_b+mana_skill_1b;
                                 end
                              else if (random_skill_bot=1) and (H_mana_b>=30) then
                                   begin
                                        x:=2;
                                        random_skill_bot:=2;
                                        H_Health_h:=H_Health_h-skill_2b;
                                        H_mana_b:=H_mana_b-mana_skill_2b;
                                   end
                              else if (random_skill_bot=2) and (H_mana_b>=60)then
                                   begin
                                        x:=3;
                                        random_skill_bot:=3;
                                        H_Health_h:=H_Health_h-skill_3b;
                                        H_mana_b:=H_mana_b-mana_skill_3b;
                                   end;

                              until (x=1) or (x=2) or (x=3);
                              kotak(42,17,79,19,yellow);
                              writeln('Bot Memilih skill ',random_skill_bot);
                         end;

                              //Pengkondisian Turn dan Pilih skill Hero user
                              if (hero=1) and (turn=2)  then
                                 begin
                                      repeat
                                      kotak(2,5,39,7,yellow);
                                      writeln(nama_hero);
                                      kotak(2,8,39,10,yellow);
                                      writeln('1. Execute (DMG: ',skill_1h,', Mana: +',mana_skill_1h,')');
                                      kotak(2,11,39,13,yellow);
                                      writeln('2. Shadow Kill (DMG: ',skill_2h,', Mana: ',mana_skill_2h,')');
                                      kotak(2,14,39,16,yellow);
                                      writeln('3. Soul eater (DMG: ',skill_3h,', Mana: ',mana_skill_3h,')');
                                      kotak(2,17,39,19,yellow);
                                      write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);

                                      if pilih_sk=1 then
                                         begin
                                            x:=1;
                                            Health_b:=Health_b-skill_1h;
                                            H_mana_h:=H_mana_h+10;
                                         end
                                      else if (pilih_sk=2) and (H_mana_h>=40) then
                                           begin
                                              x:=2;
                                              Health_b:=Health_b-skill_2h;
                                              H_mana_h:=H_mana_h-mana_skill_2h;
                                           end
                                      else if (pilih_sk=3) and (H_mana_h>=90) then
                                           begin
                                              x:=3;
                                              Health_b:=Health_b-skill_3h;
                                              H_mana_h:=H_mana_h-mana_skill_3h;
                                           end
                                      else
                                          begin
                                               x:=0;
                                               kotak(2,17,39,19,yellow);
                                               write('Not enough Mana, Press ENTER');readln;
                                          end;
                                      until (x=1) or (x=2) or (x=3);
                                 end

                              else if (hero=2) and (turn=2) then
                                   begin
                                        repeat
                                        kotak(2,5,39,7,yellow);
                                        writeln(nama_hero);
                                        kotak(2,8,39,10,yellow);
                                        writeln('1. love waves (DMG: ',skill_1h,', Mana: +',mana_skill_1h,')');
                                        kotak(2,11,39,13,yellow);
                                        writeln('2. Power From Nature (DMG: ',skill_2h,', Mana: ',mana_skill_2h,')');
                                        kotak(2,14,39,16,yellow);
                                        writeln('3. Holy Healing (HEAL: ',skill_3h,', Mana: ',mana_skill_3h,')');
                                        kotak(2,17,39,19,yellow);
                                        write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);

                                        if pilih_sk=1 then
                                         begin
                                            x:=1;
                                            Health_b:=Health_b-skill_1h;
                                            H_mana_h:=H_mana_h+10;
                                         end
                                        else if (pilih_sk=2) and (H_mana_h>=60) then
                                           begin
                                              x:=2;
                                              Health_b:=Health_b-skill_2h;
                                              H_mana_h:=H_mana_h-mana_skill_2h;
                                           end
                                        else if (pilih_sk=3) and (H_mana_h>=130) then
                                           begin
                                              x:=3;
                                              H_Health_h:=H_Health_h+skill_3h;
                                              H_mana_h:=H_mana_h-mana_skill_3h;
                                           end
                                        else
                                          begin
                                               x:=0;
                                               kotak(2,17,39,19,yellow);
                                               write('Not enough Mana, Press ENTER');readln;
                                          end;
                                        until (x=1) or (x=2) or (x=3);
                                   end

                              else if (hero=3) and (turn=2) then
                                   begin
                                        repeat
                                        kotak(2,5,39,7,yellow);
                                        writeln(nama_hero);
                                        kotak(2,8,39,10,yellow);
                                        writeln('1. Sun Arrow (DMG: ',skill_1h,', Mana: +',mana_skill_1h,')');
                                        kotak(2,11,39,13,yellow);
                                        writeln('2. Arrow Of Sun Burst (DMG: ',skill_2h,', Mana: ',mana_skill_2h,')');
                                        kotak(2,14,39,16,yellow);
                                        writeln('3. Rain Of Arrows (DMG: ',skill_3h,', Mana: ',mana_skill_3h,')');
                                        kotak(2,17,39,19,yellow);
                                        write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);

                                        if pilih_sk=1 then
                                         begin
                                            x:=1;
                                            Health_b:=Health_b-skill_1h;
                                            H_mana_h:=H_mana_h+10;
                                         end
                                        else if (pilih_sk=2) and (H_mana_h>=30) then
                                           begin
                                              x:=2;
                                              Health_b:=Health_b-skill_2h;
                                              H_mana_h:=H_mana_h-mana_skill_2h;
                                           end
                                        else if (pilih_sk=3) and (H_mana_h>=100) then
                                           begin
                                              x:=3;
                                              Health_b:=Health_b-skill_3h;
                                              H_mana_h:=H_mana_h-mana_skill_3h;
                                           end
                                        else
                                          begin
                                               x:=0;
                                               kotak(2,17,39,19,yellow);
                                               write('Not enough Mana, Press ENTER');readln;
                                          end;
                                        until (x=1) or (x=2) or (x=3);
                                   end

                              else if (hero=4) and (turn=2) then
                                   begin
                                        repeat
                                        kotak(2,5,39,7,yellow);
                                        writeln(nama_hero);
                                        kotak(2,8,39,10,yellow);
                                        writeln('1. Whirling Slash (DMG: ',skill_1h,', Mana: +',mana_skill_1h,')');
                                        kotak(2,11,39,13,yellow);
                                        writeln('2. Dual Sword (DMG: ',skill_2h,', Mana: ',mana_skill_2h,')');
                                        kotak(2,14,39,16,yellow);
                                        writeln('3. Heavy Sword (DMG: ',skill_3h,', Mana: ',mana_skill_3h,')');
                                        kotak(2,17,39,19,yellow);
                                        write('Pilih Skill [1,2,3]  : ');readln(pilih_sk);

                                        if pilih_sk=1 then
                                         begin
                                            x:=1;
                                            Health_b:=Health_b-skill_1h;
                                            H_mana_h:=H_mana_h+10;
                                         end
                                        else if (pilih_sk=2) and (H_mana_h>=30) then
                                           begin
                                              x:=2;
                                              Health_b:=Health_b-skill_2h;
                                              H_mana_h:=H_mana_h-mana_skill_2h;
                                           end
                                        else if (pilih_sk=3) and (H_mana_h>=60) then
                                           begin
                                              x:=3;
                                              Health_b:=Health_b-skill_3h;
                                              H_mana_h:=H_mana_h-mana_skill_3h;
                                           end
                                        else
                                          begin
                                               x:=0;
                                               kotak(2,17,39,19,yellow);
                                               write('Not enough Mana, Press ENTER');readln;
                                          end;
                                        until (x=1) or (x=2) or (x=3);
                                   end;

                      kotak(2,23,79,25,blue);
                      write('Press ANY key...');readkey;

                until (H_Health_h<=0) or (Health_b<=0);
                clrscr;//clearscreen layar dari setelah fight

                //Pengkondisian Setelah Pertempuran untuk mendapatkan Coin/tidak
                if Health_b<=0 then
                   begin
                        coin:=coin+1;
                        kotak(27,8,54,10,red);
                        writeln('Pertempuran telah berakhir');
                        kotak(28,11,52,13,red);
                        writeln('Kamu Mendapatkan 1 Coin');
                        kotak(29,14,51,16,red);
                        write('Press ENTER please...');readln;
                        clrscr;
                   end
                else if H_Health_h<=0 then
                   begin
                        kotak(27,11,54,13,red);
                        writeln('Pertempuran telah berakhir');
                        kotak(29,14,51,16,red);
                        write('Press ENTER please...');readln;
                        clrscr;
                   end;
       end//end of pilihan menu = 1

       //else if pilihan MENU Ke-2
       else if pilihan_M=2 then
            begin
                 clrscr;
                 kotak(20,1,60,3,cyan);
                 writeln('____________Your Hero Status___________');
                 kotak(20,4,60,6,cyan);
                 writeln('Health           :',Health_h);
                 kotak(20,7,60,9,cyan);
                 writeln('Mana             :',mana_h);
                 kotak(20,10,60,12,cyan);
                 writeln('Damage Skill 1   :',skill_1h);
                 kotak(20,13,60,15,cyan);
                 writeln('Damage Skill 2   :',skill_2h);
                 kotak(20,16,60,18,cyan);
                 writeln('Damage Skill 3   :',skill_3h);
                 kotak(20,19,60,21,cyan);
                 writeln('Coin Upgrade : ',coin);
                 kotak(20,22,60,24,cyan);
                 write('Tekan Enter Untuk Melanjutkan...');readln;
                 clrscr;
       end //end of pilihan menu = 2

      //else if pilihan MENU Ke-3
      else if pilihan_M=3 then
           begin

           repeat
           clrscr;
           kotak(20,4,60,6,cyan);
           writeln('1. Upgrade Health (+100)');
           kotak(20,7,60,9,cyan);
           writeln('2. Upgrade Skill 1 (+50)');
           kotak(20,10,60,12,cyan);
           writeln('3. Upgrade Skill 2 (+50)');
           kotak(20,13,60,15,cyan);
           writeln('4. Upgrade Skill 3 (+50)');
           kotak(20,16,60,18,cyan);
           writeln('5. Upgrade Mana (+100)');
           kotak(20,19,60,21,cyan);
           writeln('6. Back to Menu');
           kotak(20,22,60,24,cyan);
           write('Masukan Pilihan : ');readln(pil_upgrade);

           if (pil_upgrade=1) and (coin>0) then
              begin
                   Health_h:=Health_h+100;

                   kotak(20,22,60,24,cyan);
                   writeln('health telah di Upgrade');delay(2000);
                   kotak(20,22,60,24,cyan);
                   write('Tekan Enter Untuk Melanjutkan...');readln;

                   coin:=coin-1;
              end
           else if (pil_upgrade=2) and (coin>0) then
                begin
                     skill_1h:=skill_1h+50;

                     kotak(20,22,60,24,cyan);
                     writeln('Skill 1 telah di Upgrade');delay(2000);
                     kotak(20,22,60,24,cyan);
                     write('Tekan Enter Untuk Melanjutkan...');readln;

                     coin:=coin-1;
                end
           else if (pil_upgrade=3) and (coin>0) then
                begin
                     skill_2h:=skill_2h+50;

                     kotak(20,22,60,24,cyan);
                     writeln('Skill 2 telah di Upgrade');delay(2000);
                     kotak(20,22,60,24,cyan);
                     write('Tekan Enter Untuk Melanjutkan...');readln;

                     coin:=coin-1;
                end
           else if (pil_upgrade=4) and (coin>0) then
                begin
                     skill_3h:=skill_3h+50;

                     kotak(20,22,60,24,cyan);
                     writeln('Skill 3 telah di Upgrade');delay(2000);
                     kotak(20,22,60,24,cyan);;
                     write('Tekan Enter Untuk Melanjutkan...');readln;

                     coin:=coin-1;
                end
           else if (pil_upgrade=5) and (coin>0) then
                begin
                     mana_h:=mana_h+100;

                     kotak(20,22,60,24,cyan);
                     writeln('Mana telah di Upgrade');delay(2000);
                     kotak(20,22,60,24,cyan);
                     write('Tekan Enter Untuk Melanjutkan...');readln;

                     coin:=coin-1;
                end
           else if pil_upgrade=6 then
                begin
                     clrscr;
                end

           else if (pil_upgrade>6) or (pil_upgrade<1) then
                 begin
                      kotak(20,22,60,24,cyan);
                      writeln('Kamu Memasukan Pilihan yang salah');delay(2000);
                      kotak(20,22,60,24,cyan);
                      write('Tekan Enter Untuk Melanjutkan...');readln;
                 end
           else
               begin
                    kotak(20,22,60,24,cyan);
                    writeln('Coin untuk upgrade kurang :(');delay(2000);
                    kotak(20,22,60,24,cyan);
                    write('Tekan Enter Untuk Melanjutkan...');readln;
               end;

           until pil_upgrade=6;
           end;


until (pilihan_M=4) or (pilihan_M>4) or (pilihan_M<1); //repeat pilihan menu

end.
           
clrscr;
gotoxy(34,12);
write('Good Bye :)');
delay(900);
clrscr;
kotak(1,1,80,25,black);
clrscr;
gotoxy(36,11);
write('credit : ');
delay(1500);
gotoxy(27,12);
write('Created by San and Vikri');
delay(1500);
gotoxy(22,13);
write('ig: @badasserysan @vikrifrediansyah');
delay(2000);
gotoxy(33,14);
write('Copyright 2020');
delay(1500);
clrscr;
gotoxy(39,13);
write(':)');
delay(200);
end.
