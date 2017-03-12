%==========================================================================
                            % Game Start 
%==========================================================================

function Sojourner
 % intro graphic
var_init
warning off;
fprintf('\n\n')
disp('                  ________     ______  __  _____  _  _________    ')
disp('                 / __/ __ \__ / / __ \/ / / / _ \/ |/ / __/ _ \   ')
disp('                _\ \/ /_/ / // / /_/ / /_/ / , _/    / _// , _/   ')
disp('               /___/\____/\___/\____/\____/_/|_/_/|_/___/_/|_|    ')
fprintf('\n\n\n')
% intro message
fprintf('Welcome Sojourner, you are at a journey''s end, but fear not for it means\n')
fprintf('a new journey is about to start. Follow commands to select choices by typing the\n')
fprintf('letter marked by each option and skip past text by pressing any key. Remember\n')
fprintf('your choices decide your fate, death is no joke, and taking risks makes the game.\n') 
fprintf('Good luck.\n')
k=getkey;  
fprintf('\nSkip the intro? (for returning players)\n') 
fprintf('A: Yes\n')
skip=input('B: No \n\n','s');

if skip== 'A' | skip=='a'
    stats_func
    stats_func
    fprintf('\nHave you configured your suit and pressed DONE?\n')
    fprintf('A: Yes\n')
    done=false;
    while done==false
        prompt=input('\n','s');
        if prompt == 'A' | prompt == 'a'
            done=true;
        else 
            fprintf('\nInvalid Input, please retry\n')
            done=false;
        end
    end 
    pause(2)
    earth_1
elseif skip== 'B' | skip=='b'
    intro_1(0)
else
    fprintf('\nInvalid Selection, try again\n')
    pause(4)
    Sojourner
end

end

%==========================================================================
                                % STORY
%==========================================================================
                                
function intro_1(check) 
% intro scene 

if check==0
    disp('====================================================================')
    disp('       *        *          __ *      ,    .     *         . ')
    disp('            ,__   /     _ /'' *        .          *')
    disp('   .    *          \\/---./  \\    `/_          *     ')
    disp('               *  .''\\, // ''./\\  //    *          ')
    disp('                 / --\\//    \ \\//   ___       .    *  .')
    disp('    *    .      :     \#\     :/ /  //--``        ')
    disp('                ''  __/ \ (_/  ( (  //       *       .   *')
    disp(' .            *  \  _\  \ \/ / \ \//  .   _  ')
    disp('      *           _( )_  ) )''_//\  \    _( )_ .   * ')
    disp('   _       .      |___|\/#(.--''_/"\ \  /|___|        .   * _ ')
    disp(' _( )_            |_|_|\ ,/        \ \//|_|_|            _( )_')
    disp('|___|/\/\/\/\/\/\|___|/#(,&.-----.&\  (|___|/\/\/\/\/\/\|___|')
    disp('|_|_|\/\/\/\/\/\/|_|_|  /&&|R.I.P|&&\  |_|_|\/\/\/\/\/\/|_|_|')
    disp('|___|/\/\/\/\/\/\|___| /&&&|_____|&&&) |___|/\/\/\/\/\/\|___|')
    disp('|_|_|\/\/\/\/\/\/|_|_|(  [_________] ~"|_|_|\/\/\/\/\/\/|_|_|')
    disp('|___|/\/\/\/\/\/\|___|~  ~~"^"^"^"~~   |___|/\/\/\/\/\/\|___|')
    disp('|_|_|\/\/\/\/\/\/|_|_|     _-      _-  |_|_|\/\/\/\/\/\/|_|_|')
    disp('|___|/\/\/\/\/\/\|___| _-      _-      |___|/\/\/\/\/\/\|___|')
    disp('|_|_|\/\/\/\/\/\/|_|_|   _-         _- |_|_|\/\/\/\/\/\/|_|_|')
    disp('[_____]~~"^""^"~~[_____]         _-    [_____]~~"^""^"~~[_____]')
    disp('~~"^"~~          ~~"^"~~      _-       ~~"^"~~          ~~"^"~~  ') 
    fprintf('\n')
    fprintf('\nYou''re blindfolded, beat up bad, you were on your way to make the drop when')
    fprintf('\neverything went dark. Looks like the mob caught up with you...\n')
    disp('====================================================================')
    k=getkey;
    fprintf('\nTony: Sooner or later we were going to find you, you knew that didn''t you?\n')
    fprintf('A: Get on with it\n')
    fprintf('B: I knew nothing I swear\n')
    fprintf('C: ...\n')
end

next=input('\n','s');

if next=='A' | next=='a'
    fprintf('\nTony: Oh we''ve got ourselves a tough one huh? Shame we could have used you but,')
    fprintf('\nwe don''t want any loose ends do we boys?\n')
    intro_2(0)
elseif next=='B' | next=='b'
    fprintf('\nTony: Cool it kid, it''s nothing personal, you were just on the wrong end of some business.\n')
    intro_2(0)
elseif next=='C' | next=='c'
    fprintf('\nTony: Cat got your tongue? Better that way I guess.\n')
    intro_2(0)
else 
    fprintf('\nInvalid Input, please retry\n')
    intro_1(-1)
end

end

function intro_2(check)

if check==0
    fprintf('A: You have no idea who you''re dealing with\n')
    fprintf('B: This can''t be happening \n')
    fprintf('C: Isn''t this just the start to Fallout New Vegas?\n')
end

next=input('\n','s');

if next=='A' | next=='a'
    fprintf('\nTony: Ha well... good thing you won''t be around much longer..\n')
    intro_3
elseif next=='B' | next=='b'
    fprintf('\nTony: Alright I''m sick of this.\n')
    intro_3
elseif next=='C' | next=='c'
    fprintf('\nTony: Hey come on. coming up with game ideas is hard.\n')
    intro_3
else 
    fprintf('Invalid Input, please retry')
    intro_2(-1)
end


end

function intro_3
pause(1)
disp('.')
pause(1)
disp('..')
pause(1)
disp('.')
pause(1.5)
disp('=========================================================================')
disp('         ______  ___   _   _ _____')
disp('         | ___ \/ _ \ | \ | |  __ \')
disp('         | |_/ / /_\ \|  \| | |  \/')
disp('         | ___ \  _  || . ` | | __ ')
disp('         | |_/ / | | || |\  | |_\ \')
disp('         \____/\_| |_/\_| \_/\____/')
fprintf('\n\n')
fprintf('It all goes dark and you can''t feel a thing, ain''t that a kick to the head...\n')
disp('=========================================================================')
k=getkey;  
medic_1
end


function medic_1
fprintf('\n\n\n\n')
disp('=========================================================================')
disp(' ')
disp('                   ) ')
disp('                  ( ')
disp('             ___|_|_________ ')
disp('            /___|_|_________\ ')
disp('       ()  /_________________\')
disp('   `''.()))/___________________\''-.''`''.')
disp('  .,''(())()   ____     ____  |,.''     ''-.')
disp('     )(()))  |)~~(|   |)~~(| |. ''-. ()`''.')
disp('    ()()(()) ||__||   ||__|| | `''.,(())')
disp('   ())()(()))________________|___ ()))()')
disp('   ()((())()))| | | | | | | | | | (()()))')
disp('  ()))(()()())|_|_|_|_|_|_|_|_|_|)(()(()')
disp('  (()((())(()-------------------|(())(())')
disp('  ~^~ ^" ^"  ^~^   ^"   ~^~    ^~^~(()(()')
disp('  ^"     ^~^   ~^~   ^"    ^~^   ~~^~""^'')')
disp(' ')

fprintf('\nYou wake up with a pounding headache, lying on a hard mattress on the floor\n') 
fprintf('in the corner of a small house. You see an old healer bot approach you with what\n')
fprintf('appears to be a smile...\n')
disp('=========================================================================')
k=getkey; 

fprintf('\nMaryl: How are you feeling honey? Its good to see you alive and well.\n')
disp('.')
pause(1)
disp('..')
pause(1)
disp('.')
pause(1)
fprintf('Maryl: Oh! that''s right you can''t do much without this...\n\n')
pause(2)
disp('=========================================================================')
fprintf('Maryl takes out what seems to be a helmet and fits it on my head, I would move\n')
fprintf('but I feel much too weak to do anything, all I can do is comply...\n')
disp('=========================================================================')
k=getkey;  
fprintf('\nMaryl: So how about starting with your name?             [type below]')
name=input('\n\n','s');
pause(1)
fprintf('\n')
disp('=========================================================================')
fprintf('The words fumble in your mouth and your brain feels numb, the helmet somehow\n')
fprintf('senses it and comes alive, in fact I come alive.\n')
disp('=========================================================================')
k=getkey;  
fprintf('\nMaryl: %s?, What a lovely name!',name)
pause(2)
fprintf(' Why don''t you tell me a little more about yourself?\n')

done=false;
first=true;
while done==false
    if first==true
        fprintf('A: uhh I can''t remember...\n')
        fprintf('B: How about you tell me where the hell I am??\n')
        fprintf('C: I like turtles!!\n')
    end
    response=input('\n','s');
    
    if response=='a' | response=='A'
        fprintf('\nMaryl: Well you have been shot in the head. ')
        pause(1)
        done=true;
    elseif response=='b' | response=='B'
        fprintf('\nMaryl: You are safe in my home. ')
        pause(1)
        done=true;
        
    elseif response=='c' | response=='C'
        fprintf('\nMaryl: Good for you! ')
        pause(1)
        done=true;
    else
        fprintf('\nInvalid Input, please try again. \n')
        done=false; 
        first=false;
    end        
end
pause(1)
fprintf('My name is Maryl, you''ve been in a coma for about 2 months now.\n') 
fprintf('Ivan found you burried alive in our town''s cemetery and brought you here. He mentioned\n')
fprintf('that you were a well known traveler of sorts...\n\n')
k=getkey; 
fprintf('Maryl: Anyhow, your condition is stabilizing and you are miraculously alive and well, although\n')
fprintf('due to the severity of your injury your motor functions, vision, emotional stability,\n')
fprintf('memory, ability to focus, and sense perception have been significantly impacted. But don''t worry\n')
fprintf('dear! This helmet and suit I have for you will fix most of these issues!\n\n')
k=getkey;  
fprintf('Maryl: You are equipped with a Multi-Purpose Combat Suit for life support after your injury. I''m\n') 
fprintf('afraid there was little I could do for your memory, you might want to start with talking to Ivan\n') 
fprintf('in the town center!\n')
k=getkey;  

done1=false;
first1=true;
while done1==false
    if first1==true
        fprintf('A: Where''s the door? and who''s Ivan? Talk.\n')
        fprintf('B: Thank you Maryl, who is Ivan again?\n')
        fprintf('C: I like turtles!!\n')
    end
    response1=input('\n','s');
    
    if response1=='a' | response1=='A'
        fprintf('\nMaryl: Emotional instability is normal %s, I understand your concern. Ivan is the man\n',name)
        fprintf('who found you and can be found in the town center. Safe travels %s!\n', name)
        k=getkey;  
        done1=true;
    elseif response1=='b' | response1=='B'
        fprintf('\nMaryl: No problem %s, I am happy to see you well, you really were in rough shape. Ivan is\n',name)
        fprintf('the man who found you and can be found in the town center. Safe travels %s!\n', name)
        k=getkey;  
        done1=true;
        
    elseif response1=='c' | response1=='C'
        fprintf('\nMaryl: That''s great %s! Safe travels!\n\n',name)
        k=getkey;  
        done1=true;
    else
        fprintf('\nInvalid Input, please try again. \n')
        done1=false; 
        first1=false;
    end  
end
pause(2.5)
fprintf('\n!!!\nMaryl: Oh wait before you go, finish configuring your suit! Choose which options best fit your\n')
fprintf('preferred combat style. I''m sure you will be interesting in finding whoever did this to you...\n\n')
stats_func
stats_func
fprintf('\nHave you configured your suit and pressed DONE?\n')
fprintf('A: Yes\n')
done4=false;
while done4==false
    prompt=input('\n','s');
    if prompt == 'A' | prompt == 'a'
        pause(5)
        done4=true;
    else 
        fprintf('\nInvalid Input, please retry\n')
        done4=false;
    end
end
fprintf('\n\n')
pause(1)
you(true)
k=getkey; 
earth_1
end

%==========================================================================
                                %EARTH 2.0
%==========================================================================
function earth_1
global ship_type
global cemetery_cleared
global forest_cleared
global gun_type
global shield_type
global sword_type
global ivan_first
global ivan_sec
global ship_name
global name
global ivan_3
global health
global boss_ded
global tony_result
global ivan_4
% 
% ivan_first=false;
% ivan_sec=false;
% ivan_3=false;
% cemetery_cleared=true;
% forest_cleared=true;
% ship_type=2;
% boss_ded=true;
% earth display
disp('============================================================================================================')
disp('| Earth 2.0 |                                     *******                ')
disp(' ===========                       ~            *---*******')
disp('                                 ~             *-----*******')
disp('                          ~                   *-------*******')
disp('                         __      _   _!__     *-------*******')
disp('                    _   /  \_  _/ \  |::| ___ **-----********   ~')
disp('                  _/ \_/^    \/   ^\/|::|\|:|  **---*****/^\_')
disp('               /\/  ^ /  ^    / ^ ___|::|_|:|_/\_******/  ^  \')
disp('              /  \  _/ ^ ^   /    |::|--|:|---|  \__/  ^     ^\___')
disp('            _/_^  \/  ^    _/ ^   |::|::|:|-::| ^ /_  ^    ^  ^   \_')
disp('           /   \^ /    /\ /       |::|--|:|:--|  /  \        ^      \')
disp('          /   **\/    /**/        |::|::|:|:-:| / ^  \* ^   ** ^     \')
disp('    ** /**  / ****  ******    *   |::|::|:|:::|/    ^ \ ** ****  *^**')
disp('   *** **** ***||  ****||    ***  |::|::|:|:::|         ****|| *******')
disp(' ___||__||__||_____||_______**||*________________________||____||_||___')
disp(' //////////////////////////////////////////////////////////////////////')
fprintf('\n')
fprintf('The atmosphere, fauna, flaura, and climate are highly similar to that of planet earth,\n')
fprintf('the historical birthplace of humanity. The planet is mainly inhabited by humans, a highly volatile\n')
fprintf('species, to be handled with care. You are surrounded on all sides by dense evergreen forest\n')
fprintf('with signs pointing the way to possible waypoints.\n')
disp('============================================================================================================')

fprintf('\n')
disp(' --------------------------------')
fprintf('| A: Docking Pylons              |\n')
fprintf('| B: Town Center                 |\n')
fprintf('| C: Cemetery                    |\n')
fprintf('| D: Forest                      |\n')
disp(' --------------------------------')

done=false;
while done==false
    response=input('\n','s');
    
    if response=='a' | response=='A'
        earth_docks
        done=true;
    elseif response=='b' | response=='B'
        earth_town
        done=true;
    elseif response=='c' | response=='C'
        earth_cemetery
        done=true;
    elseif response=='d' | response=='D'
        earth_forest
        done=true;
    else
        fprintf('\nInvalid Input, please try again. \n')
        done=false; 
    end        
end

    function earth_docks
       if ship_type==0
           fprintf('\n\n')
           disp('===================================================')
           fprintf('You see a very nice space station with all types\n')
           fprintf('of ships, war vessels, trading fleets, and luxury\n')
           fprintf('cruisers. In the midst of the spectacle you realize\n')
           fprintf('that you don''t have a ship!!\n')
           disp('===================================================')
           fprintf('\n\n')
           k=getkey; 
           earth_1
       else
           fprintf('\n\n')
           disp('===================================================')
           fprintf('\nYou see a very nice space station with all types\n')
           fprintf('of ships, war vessels, trading fleets, and luxury\n')
           fprintf('cruisers. The scenery really gets you every time.\n\n')
           disp('===================================================')
           k=getkey; 
           ship_show(ship_type)
           pause(1)
           disp('============================================================')
           fprintf('| Loading Transportation Interface: Choose a Destination |\n')
           disp('============================================================')
           k=getkey; 
           map
       end
    end 
    
    function earth_town
 
        fprintf('\n\n')
        disp('==========================================================')
        fprintf('You approach a quiet town on the side of a mountain.\n')
        fprintf('It''s town square is filled with people enjoying themselves\n')
        fprintf('during what seems to be a festive time. You decide to go to\n')
        fprintf('the nearest inn for information.\n')
        disp('==========================================================')
        fprintf('\n\n\n')
        k=getkey;
        disp('=====================================================')
        disp('                  ____')
        disp('                  | =|')
        disp('                +-"  "-+')
        disp('                | ==  =|')
        disp('              +-"  == ="-+')
        disp('              |=    == = |')
        disp('           +-" ==   =   "-+')
        disp('          __| =  ______ ===|__')
        disp('          | == = |####| ==  =|')
        disp('        +-"  ==  |====|---. ="-+')
        disp('     +--" = =  = "----"---"=   "--+')
        disp('     |==  ==== ==   ==  ===  == ==|')
        disp('     |= == == _____________ =  == |')
        disp('     | =  ==  |#####|#####|= ==  =|')
        disp('     |= = .---|=====|=====|---.=  |')
        disp('     |== =| X |     |     | X | ==|')
        disp('     |  =="---"-----+-----"---" = |')
        disp('     |____________________________|')
        disp('     | ________   _____________   |')
        disp('     |=|##||##|== |##|##|##|##|  =|')
        disp('     |=|,-""-.| = | .^. | .^. | ==|')
        disp('     |=||    || ==|/   \|/   \|  =|')
        disp('     |=||o   || "---------------"=|')
        disp('     |_||____||___________________| ')
        fprintf('\nThe inn is clouded with smoke and littered with\n')
        fprintf('strange faces. A man notices you immediately and\n')
        fprintf('approaches you with a stern face, its Ivan.\n')
        disp('=====================================================')
        k=getkey;
        if cemetery_cleared==false & ivan_first==true
            fprintf('\nIvan: Greetings Sojourner, my name is Ivan Ivanovitch Ivanovsky. I trust that\n')
            fprintf('the Multi-Purpose Combat suit is to your liking, that and being alive of course. \n')
            fprintf('Now down to business, I saved your life not only because you are a man of legend,\n')
            fprintf('but because I also have some business to attend to. I believe you are the man\n')
            fprintf('for the job. Don''t look so taken aback, nothing is free in this life. You can\n')
            fprintf('start repaying your debt by clearing the cemetery. Your captors accidentaly left ghastly\n')
            fprintf('parasitical creatures there, your first task is to drive them out. I will give you\n')
            fprintf('the information you seek after this is complete.\n')
            k=getkey;
            fprintf('A: Say whaat??\n')
            fprintf('B: Thank you Ivan, I''ll get right to it.\n')
            fprintf('C: No you talk now. Or else.\n')
            exit=false;
            while exit==false
                return1=input('\n','s');
                if return1=='a' | return1=='A'
                    fprintf('\nIvan: What, there you go happy? Now I have weapons for you in the back\n\n')
                    k=getkey;
                    exit=true;
                elseif return1=='b' | return1=='B'
                    fprintf('\nIvan: Time is short Sojourner, weapons are in the back.\n\n')
                    k=getkey;
                    exit=true;
                elseif return1=='c' | return1=='C'
                    fprintf('\nIvan: Ha very funny. Threaten the man who saved your life, paid for your recovery\n')
                    fprintf('and suit, knows who you are and what happened to you and just so happens to be your\n')
                    fprintf('only way off of this planet. Now get to work, weapons are in the back.\n\n')
                    k=getkey;
                    exit=true;
                else
                    fprintf('\nInvalid Input, please try again. \n')
                    exit=false; 
                end        
            end   

            disp('==================================================================')
            fprintf('You head to the back of the inn, past the nodding bartender\n')
            fprintf('to find a wooden crate marked SOJOURNER.\n')
            fprintf('Inside you find a rapier, two laser pistols, and an energy shield.\n') 
            disp('==================================================================')
            
            fprintf('\nWeapon Loadout 1:\n')
            disp('     _____,__       __,_____     ')
            disp('    "--==.__ \     / __.==--" ')
            disp('         ''-)#\   /#(-'' ')
            disp('           ''-´   `-'' ')
            disp('       | ')
            disp('       /~\ ')
            disp('Oxxxxx|  (|=============================- ')
            disp(' \____/\_/ ')
            disp('       |  ')
            fprintf('\n\n')
            k=getkey;

            ivan_first=false;
            gun_type=gun_type+1;
            sword_type=sword_type+1;
            shield_type=shield_type+1;
            earth_1
        elseif ivan_first==false & cemetery_cleared==false
            fprintf('\n\nIvan: What are you still doing around here?\n')
            fprintf('\nGet to work!\n')
            k=getkey;
            earth_1
        elseif ivan_sec==true & cemetery_cleared==true & forest_cleared==false
            fprintf('\n\nIvan: Good work Sojourner! I knew you could do it. Now for what\n')
            fprintf('I promised, your life before this point has been one cloaked in mystery\n')
            fprintf('my friend. You are know from place to place simply as the Sojourner, a\n')
            fprintf('traveler across space and time. You stayed here on Earth 2.0 in midst of a\n')
            fprintf('galaxy plagued by great dangers, one in which you encountered the jewel of\n')
            fprintf('our solar system. Our friends from Paradise City.\n')
            k=getkey;
            fprintf('A: Pick up the pace Ivan\n')
            fprintf('B: You mean Tony right? \n')
            fprintf('C: Hmmm I could get used to being called the Sojourner.\n')
            
            exit1=false;
            while exit1==false
                return2=input('\n','s');
                if return2=='a' | return2=='A'
                    fprintf('\nIvan: I''m going. ')
                    exit1=true;
                elseif return2=='b' | return2=='B'
                    fprintf('\nIvan: Yes exactly Tony.')
                    exit1=true;
                elseif return2=='c' | return2=='C'
                    fprintf('\nIvan:Yes it is a cool name, sounds like a good videogame too.\n')
                    exit1=true;
                else
                    fprintf('\nInvalid Input, please try again. \n')
                    exit1=false; 
                end        
            end   
            pause(1)
            fprintf('These guys who you ran into are part of the Paradise City Mob.\n')
            fprintf('One of the most dangerous and notorious mobs up to date, they are\n')
            fprintf('robots programmed by the mad computer-scientists'' Kantwon Rogers and\n')
            fprintf('David Smith, who were trying to study mob mechanics using AI.\n')
            fprintf('In an experiment gone wrong one of the universe''s most ruthless crime\n')
            fprintf('syndicates was born. Tony is one of the key figures in the mob and has\n')
            fprintf('been harassing our planet with threats in search for you for a while now.\n')
            k=getkey;
            fprintf('A: How''d they find me? Am I still in danger?\n')
            fprintf('B: So far that all sounds totally plausible.\n')
            
            exit1=false;
            while exit1==false
                return2=input('\n','s');
                if return2=='a' | return2=='A'
                    fprintf('\nIvan: Relax kid, ')
                    exit1=true;
                elseif return2=='b' | return2=='B'
                    fprintf('\nIvan: Totally, anyways ')
                    exit1=true;
                else
                    fprintf('\nInvalid Input, please try again. \n')
                    exit1=false; 
                end        
            end   
            fprintf('you were here gathering intel over Paradise City and the other\n')
            fprintf('various planets in our galaxy. I don''t know how they found you and\n')
            fprintf('with your new appearence and being presumed dead you should be under\n')
            fprintf('their radar. I was visiting my wife''s tomb on the night they took you\n')
            fprintf('and saw the whole thing.\n')
            k=getkey;
            fprintf('A: Thank you Ivan, you said Tony was in Paradise City?\n')
            fprintf('B: Ok now how about getting me off of this planet\n')
            fprintf('C: That''s it?\n')
            
            exit1=false;
            while exit1==false
                return2=input('\n','s');
                if return2=='a' | return2=='A'
                    fprintf('Ivan: That''s right, you''ll never find a more wretched hive of scum\n')
                    fprintf('and villainy than in Paradise City, the city of thieves and murderers.\n')
                    exit1=true;
                elseif return2=='b' | return2=='B'
                    fprintf('\nIvan: Ha well. ')
                    exit1=true;
                elseif return2=='c' | return2=='C'
                    fprintf('\nIvan: Yup. ')
                    exit1=true;
                else
                    fprintf('\nInvalid Input, please try again. \n')
                    exit1=false; 
                end        
            end 
            fprintf('If you want a ship, I have one, but it comes for a price. The secrets\n')
            fprintf('to your past are in that city, %s, if you want to find out who the Sojourner is\n',name)
            fprintf('he''s waiting for you there, find Tony and find your memory. The first step\n')
            fprintf('is clearing our forest of the raider scum! Return to me with this task done and \n')
            fprintf('I Ivan Ivanovitch Ivanosky will get you a ship.\n') 
            k=getkey;
            ivan_sec=false;
            earth_1
        elseif forest_cleared==true & ivan_3==true
            fprintf('\nIvan: You actually did it, you truly are the making of a new legend, born from \n')
            fprintf('the old. As promised a ship, go ahead and name it.         [type below]\n\n')
            ship_name=input(' ','s');
            fprintf('\nIvan: Well Sojourner, or should I say %s, best of luck. Also don''t let Tony\n',name)
            fprintf('trick you, take your shot when you can and make it count.\n')
            k=getkey;
            ship_type=1;
            ivan_3=false;
            earth_1
        elseif forest_cleared==false & ivan_3==false
            fprintf('\nIvan: What are you doing here? You have a job to do!\n')
            k=getkey;
            earth_1

        elseif forest_cleared==true & ivan_3==false & boss_ded==false
            fprintf('\nIvan: What are you doing here? Go kill Tony!\n')
            k=getkey;
            earth_1
        elseif boss_ded==true & ivan_4==true
            fprintf('\nIvan: Ah Sojourner, what brings you here?\n')
            fprintf('A: The message in the monolith.\n')
            fprintf('B: How''d you get into that pyramid Ivan??\n')
            fprintf('C: Gimme a ship.\n')
            i=false;
            while i ==false
                inp=input('\n','s');
                if inp=='a' | inp=='A'
                    fprintf('\nIvan: Ah you''ve met with the king of the dinosaurs and you''re still here, impressive.\n')
                    i=true;
                elseif inp=='b' | inp=='B'
                    fprintf('\nIvan: Ha well that is a story for another time, you are not the only one with a past.\n') 
                    i=true;
                elseif inp=='c' | inp=='C'
                    fprintf('\nIvan: ')
                    i=true;
                else
                    fprintf('Invalid Input, please try again.\n')
                end              
            end
            fprintf('I promised you a ship and I will deliver. You have been brave Sojourner, Stella Lignum\n')
            fprintf('and the Undying Desert are no place for the weak. In order to reach Paradise City you need\n')
            fprintf('a class 3 ship due to the planet''s volatile atmosphere. I have no such ship, but I know \n')
            fprintf('where you can find one. Go to the ice tundra, free the land of its oppressors, and then you\n')
            fprintf('can find and kill Tony. Take this ship for now, a gift for your troubles.\n')
            fprintf('A: You are only telling me this now?\n')
            fprintf('B: Thanks Ivan, I''ll get right to it.\n')
            fprintf('C: You are hiding something old man.\n')
            i=false;
            while i ==false
                inp=input('\n','s');
                if inp=='a' | inp=='A'
                    fprintf('\nIvan: What use would it have been to you before? Now you know what to do.\n')
                    i=true;
                elseif inp=='b' | inp=='B'
                    fprintf('\nIvan: Good, I know I can count on you Sojourner.\n') 
                    i=true;
                elseif inp=='c' | inp=='C'
                    fprintf('\nIvan: You had to be strong first in order to face Tony Sojourner, these steps are\n')
                    fprintf('neccessary in order to make sure he doesn''t blow another hole in your head. Now\n')
                    fprintf('you know what to do.\n')
                    i=true;
                else
                    fprintf('Invalid Input, please try again.\n')
                end              
            end
            k=getkey;
            fprintf('\n')
            disp('=========================================================')
            fprintf('Something is not quite right about Ivan, at least I have\n')
            fprintf('a new ship.\n')
            ship_show(2)
            ship_type=2;
            disp('=========================================================')
            k=getkey;
            ivan_4=false;
            earth_1          
        elseif ivan_4==false & tony_result==true
            fprintf('\n\nIvan: Sojourner Congratulations! I heard someone lit up the Paradise City Casino\n')
            fprintf('and plugged some big mobsters. You''ve really done it.\n')
            fprintf('A: Ivan cut the Sojourner crap, who the hell am I?\n')
            fprintf('B: Yup, Tony had some interesting things to say...\n')
            fprintf('C: You better start talking if you don''t want to join them.\n')
            l=false;
            while l==false
                o=input('\n','s');
                if o=='A' | o=='a' | o=='B' | o=='b' | o=='C' | o=='c'
                    fprintf('\nIvan: So you had a talk with Tony before shooting him, damn shame. We really\n')
                    fprintf('could have gotten a lot done together. Well anyways, I think we should finish\n')
                    fprintf('this conversation elsewhere, what do you think?\n\n')
                    k=getkey;
                    disp('===============================================================================')
                    fprintf('Before you can respond Ivan pulls out a strange electronic device and with a\n')
                    fprintf('push of a button your whole body goes numb and you feel yourself go as you crash\n')
                    fprintf('down onto the hard floor.\n')
                    disp('===============================================================================')
                    k=getkey;
                    final_scene
                else
                    fprintf('Invalid Input, please retry\n')
                end
            end
        else
            fprintf('\nIvan: Don''t you have something to be doing?\n')
            k=getkey;
            earth_1
        end
    end

    function earth_cemetery
           fprintf('\n\n')
           disp('===========================================================')
           fprintf('You faintly recall your surroundings with a growing\n')
           fprintf('sense of fear. It''s unnaturally cold and in the distance you\n')
           fprintf('can faintly make out webs across the tombstones.\n')
           disp('===========================================================')
           fprintf('\n\n')
           k=getkey;
        if ivan_first==true
            fprintf('First I should find to Ivan...\n')
            k=getkey;
            earth_1
        end
        
        if cemetery_cleared==true
            fprintf('Wow I really hate spiders, time to move on...\n')
            k=getkey;
            earth_1
        end
        disp('===================================================')
        fprintf('You encounter a hideous beast that wishes to fight.\n')
        disp('Gargantua ^^         |         ^^')
        disp('          ::         |         ::')
        disp('   ^^     ::         |         ::     ^^')
        disp('   ::     ::         |         ::     ::')
        disp('    ::     ::        |        ::     ::')
        disp('      ::    ::       |       ::    ::')
        disp('        ::    ::   _/~\_   ::    ::')
        disp('          ::   :::/     \:::   ::')
        disp('            :::::(       ):::::')
        disp('                  \ ___ /')
        disp('             :::::/`   `\:::::')
        disp('           ::    ::\o o/::    ::')
        disp('         ::     ::  :":  ::     ::')
        disp('       ::      ::   ` `   ::      ::')
        disp('      ::      ::           ::      ::')
        disp('     ::      ::             ::      ::  ')
        disp('     ^^      ::             ::      ^^')
        disp('             ::             ::')
        disp('             ^^             ^^')
        disp('===================================================')
        k=getkey;
        fprintf('\n\nWant a quick combat tutorial?\n')
        fprintf('A: Yes\n')
        fprintf('B: No\n')
        done8=false;
        while done8==false
            in=input('\n','s');
            if in=='A' | in=='a'
                fprintf('\n\nOk so basically the combat works off of a more strategy based rock, paper,\n')
                fprintf('scissors game. Shooting is blocked by shields, but will hit a striking enemy.\n')
                fprintf('Striking hits through shields, but is vulnerable to shots. Shields stop shots,\n')
                fprintf('and give you health in the process, but can''t block melee strikes. If you or\n')
                fprintf('your enemy lands any one of these moves their tally for that move goes up. Once\n')
                fprintf('it hits 3 or higher, each time you or your enemy uses that move its effectiveness\n')
                fprintf('increases significantly. Enemies will be aware of this and use it to their advantage,\n')
                fprintf('they will also change habits depending on their health and have preferred move sets.\n')
                fprintf('For example beasts will be more inclined to strike than shoot. Also remember death is\n')
                fprintf('permanent, but at least your nifty suit reheals you after each battle. Good luck.\n\n')
                k=getkey;
                done8=true;
            elseif in=='B' | in=='b'
                fprintf('\nkk good luck\n')
                k=getkey;
                done8=true;
            else 
                fprintf('\nInvalid input, please try again\n')
                done8=false;
            end
        end
        
        combat('Gargantua',100,15,10,5,1)
        fprintf('\n')
        disp('===========================================================')
        fprintf('You emerge victorious, ready to conquer those in your way.\n')
        fprintf('The cemetery is cleared of the beast, I should find Ivan.\n')
        disp('===========================================================')
        cemetery_cleared=true;
        health=health+10;
        k=getkey; 
        earth_1    
    end

    function earth_forest
        fprintf('\n\n')
        disp('==================================================================')
        fprintf('A once happy place, the forest is dark, cold, and foreboding. You\n')
        fprintf('feel the raider''s piercing eyes as you travel the forest path...\n')
        disp('==================================================================')
        fprintf('\n\n')
        k=getkey; 
        if ivan_first==true | ivan_sec==true
            fprintf('First I should talk to Ivan...\n')
            k=getkey; 
            earth_1
        end
        
        if forest_cleared==true
            fprintf('Not much to see here anymore...\n')
            k=getkey; 
            earth_1
        end
        
        disp('===================================================')
        fprintf('A raider comes screaming through the trees.\n')
        disp('Raider  ___ ')
        disp('     __|___|__ ')
        disp('      ("000") ')
        disp('      _\===/_     ______. ')
        disp('     //\__/\ \ ~(_]---" ')
        disp('    / ){==}( .\/_) ')
        disp('    \ \    / \_/ ')
        disp('    )/_|  |_\ ')
        disp('   // /(\/)\ \ ')
        disp('   /_/      \_\ ')
        disp('  (_||      ||_) ')
        disp('    \| |__| |/ ')
        disp('     | |  | | ')
        disp('     | |  | | ')
        disp('     |_|  |_| ')
        disp('     /_\  /_\ ')
        disp('===================================================')
        key=getkey;
        combat('Raider',100,15,25,5,2)
        fprintf('\n')
        disp('=========================================================')
        fprintf('Victory is yours, for now. The forest remains watchful.\n')
        disp('=========================================================')
        k=getkey;
        fprintf('\n\n')
        
        disp('===================================================')
        fprintf('A raider comes screaming through the trees.\n\n')        
        disp('Raider-         ___,')
        disp('Huntsman      __)____)__')
        disp('                0)0 )))')
        disp('        ,       \=_/ \__')
        disp('     __/).          )_/=\')
        disp('    /===} \      __((_\_/\')
        disp('   / = __/ \    /_/-\o____)')
        disp('  / ,_/|    \   \/  ))\\\\\')
        disp('  \_)o_"     _.-"  ,/:_/_\\    ___')
        disp('       "---`" \>__/   /\\---.,/_  \')
        disp('       (      /  /  /\\  ====} \)  \')
        disp('      |=====}   ("  \\\        (   /')
        disp('  _____/         )__\\ /   ==} /\ (')
        disp(' / _______/,_____| |_,(       /  ) )')
        disp('/ (_     \  |   _/ o)  \ ==} /_  |/')
        disp('\_ /     ( "| (___/     `.__  /  "')
        disp('          \ |        / _/ / _/')
        disp('           \(       / /  / /')
        disp('            )\     / (  ( <')
        disp('         ,./_(,, ,/_|    \_/,,._ ')
        disp('===================================================')
        k=getkey;
        combat('Raider-Huntsman',125,20,30,5,3)
        fprintf('\n')
        disp('__      _______ _____ _______ ____  _______     __')
        disp('\ \    / /_   _/ ____|__   __/ __ \|  __ \ \   / /')
        disp(' \ \  / /  | || |       | | | |  | | |__) \ \_/ / ')
        disp('  \ \/ /   | || |       | | | |  | |  _  / \   /  ')
        disp('   \  /   _| || |____   | | | |__| | | \ \  | |   ')
        disp('    \/   |_____\_____|  |_|  \____/|_|  \_\ |_| ')
        disp('===================================================')
        fprintf('The last raider crumples beneath you. Now you really\n')
        fprintf('feel quite cool. Time to get a ship from Ivan.\n')
        disp('===================================================')
        k=getkey;
        fprintf('\n\n')
        disp('===================================================')
        fprintf('Amidst the remains of the raider camp you spot\n')
        fprintf('some loot\n\n')
        disp('                   |_)=A=0=A=(_|')
        disp('    A____________ _____H___H___o    _____')
        disp('   O____________<^       ====__~`\_/    /`~~|')
        disp('                 `\_________(_)>.  ___--''   |')
        disp('                                 \/   `-----''''')
        disp('===================================================')
        fprintf('\n')
        k=getkey;
        forest_cleared=true;  
        gun_type=gun_type+1;
        health=health+20;
        earth_1
    end

end
%==========================================================================
                                %ICE TUNDRA
%==========================================================================
function ice_1
global ship_type
global ice_cleared
global ice_boss
global sword_type
global health
global gun_type


disp('=========================================================================================================')
disp('| Ice Tundra |    ')                          
disp(' =========== ')  
disp('      ` : | | | |:  ||  :     `  :  |  |+|: | : : :|   .        `              .')
disp('        ` : | :|  ||  |:  :    `  |  | :| : | : |:   |  .                    :')
disp('        *    *       `  |  : :  |  .      `'' :| | :| . : :         *   :.||')
disp('      ''          .         + `  |  :  .: .        ''| | : :| :    .   |:| ||')
disp('         .                 .    ` *|  || :       `    | | :| | :      |:| |')
disp('        .            .   . *    .   .  ` |||.  +        + ''| |||  .  ||`')
disp('     .             *              .     +:`|!             . ||||  :.||`')
disp(' +                      .                ..!|*          . | :`||+ |||`')
disp('     .                         +      : |||`        .| :| | | |.| ||`     .')
disp('       *     +   ''               +  :|| |`     :.+. || || | |:`|| `')
disp('                            .      .||` .    ..|| | |: ''` `| | |`  +')
disp('              +         .      .    | .      `|||.:      .||    .      .    `')
disp('  __    +      *                         `''       `''|.    `:')
disp('"''  `---"""----....____,..^---`^``----.,.___          `.    `.  .    ____,.,-')
disp('    ___,--''""`---"''   ^  ^ ^        ^       """''---,..___ __,..---""''')
disp('--"''                           ^                         ``--..,__ ')
fprintf('\n')
fprintf('An ice-cold tundra filled with beautiful landscapes and the deadly horrors beneath the visage. The\n')
fprintf('winds howl and your blood freezes at the thought of the battles ahead.\n')
disp('=========================================================================================================')
fprintf('\n')
disp(' --------------------------------')
fprintf('| A: Ship                        |\n')
fprintf('| B: Explore                     |\n')
disp(' --------------------------------')

done=false;
while done==false
    response=input('\n','s');    
    if response=='a' | response=='A'
        ice_ship
        done=true;
    elseif response=='b' | response=='B'
        ice_explore
        done=true;
    else
        fprintf('\nInvalid Input, please try again. \n')
        done=false; 
    end        
end
    function ice_ship
        disp('===================================================')
        ship_show(ship_type)
        disp('============================================================')
        fprintf('| Loading Transportation Interface: Choose a Destination |\n')
        disp('============================================================')
        pause(1)
        map
    end

    function ice_explore
        fprintf('\n\n')
        disp('==================================================================')
        fprintf('The ice-cold wind pierces the crevices of your suit and your eye-\n')
        fprintf('sight makes out disformed shapes in the blinding snow.\n')
        disp('==================================================================')
        fprintf('\n\n')
        k=getkey;
        
        if ice_cleared==false
            disp('===================================================')
            fprintf('A Zombie Knight emerges from his snow tomb\n')
            disp('|\             //')
            disp(' \\           _!_')
            disp('  \\         /___\')
            disp('   \\        [+++]')
            disp('    \\    _ _\^^^/_ _')
            disp('     \\/ (    ''-''  ( )')
            disp('     /( \/ | {&}   /\ \')
            disp('      \  / \     / _> )')
            disp('        "`   >:::;-''`""''-.')
            disp('            /:::/         \')
            disp('Zombie     /  /||   {&}   |')
            disp('Knight    (  / (\         /')
            disp('          / /   \''-.___.-''')
            disp('        _/ /     \ \')
            disp('       /___|    /___| ')
            disp('===================================================')
            k=getkey;
            combat('Zombie Knight',150,35,25,10,7)
            fprintf('\n')
            disp('=========================================================')
            fprintf('The knight falls, yet more figures appear out of the ground\n')
            disp('=========================================================')
            k=getkey;
            fprintf('\n\n')
            disp('==========================================================')
            fprintf('A Zombie Thrall bursts from the ground, sword in hand\n')
            disp('      _,.')
            disp('    ,` -.)       Zombie Thrall')
            disp('   ( _/-\\-._')
            disp('  /,|`--._,-^|            ,')
            disp('  \_| |`-._/||          ,''|')
            disp('    |  `-, / |         /  /')
            disp('    |     || |        /  /')
            disp('     `r-._||/   __   /  /')   
            disp(' __,-<_     )`-/  `./  /')
            disp('''  \   `---''   \   /  /')
            disp('    |           |./  /')
            disp('    /           //  /')
            disp('\_/'' \         |/  /')
            disp(' |    |   _,^-''/  /')
            disp(' |    , ``  (\/  /_')
            disp('  \,.->._    \X-=/^')
            disp('  (  /   `-._//^`')
            disp('  `Y-.____(__}')
            disp('    |     {__)')
            disp('          () ')
            disp('==========================================================')
            k=getkey;
            combat('Zombie Thrall',175,35,25,10,8)
            fprintf('\n')
            disp('===========================================================')
            fprintf('The snows die down with the last breaths of the Zombie\n')
            fprintf('Thrall, in the distance you see a temple in the mountains\n')
            disp('===========================================================')
            k=getkey;
            fprintf('\n\n')
            ice_cleared=true;
        end       
        
        if ice_boss==false & ice_cleared==true
            done9=false;
            fprintf('\nContinue to Ice Temple?\n')
            fprintf('A: Yes\n')
            fprintf('B: No\n')
            while done9==false
                inp=input('\n','s');
                if inp=='A' | inp=='a'
                    done9=true;
                elseif inp=='B' | inp=='b'
                    fprintf('\nBetter be safe for now and head back to the ship\n')
                    done9=true;
                    ice_1
                else
                    fprintf('\nInvalid Input, please try again.\n')
                    done9=false;
                end    
            end
            
            disp('=========================================================================')
            disp('               )\         O_._._._A_._._._O         /(')
            disp('                \`--.___,''=================`.___,--''/')
            disp('                 \`--._.__                 __._,--''/')
            disp('                   \  ,. l`~~~~~~~~~~~~~~~''l ,.  /')
            disp('       __            \||(_)!_!_!_.-._!_!_!(_)||/            __')
            disp('       \\`-.__        ||_|____!!_|;|_!!____|_||        __,-''//')
            disp('        \\    `==---=''-----------''=''-----------`=---==''    //')
            disp('        | `--.                                         ,--'' |')
            disp('         \  ,.`~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'',.  /')
            disp('           \||  ____,-------._,-------._,-------.____  ||/')
            disp('            ||\|___!`======="!`======="!`======="!___|/||')
            disp('  __O_____O_ll_lO_____O_____O|| |''|''| ||O_____O_____Ol_ll_O_____O__')
            disp('  o H o o H o o H o o H o o |-----------| o o H o o H o o H o o H o')
            disp(' ___H_____H_____H_____H____O =========== O____H_____H_____H_____H___')
            disp('()______()______()______() ''==== +-+ ===='' ()______()______()______()')
            disp('||{_}{_}||{_}{_}||{_}{_}/| ===== |_| ===== |\{_}{_}||{_}{_}||{_}{_}||')
            disp('||      ||      ||     / |==== s(   )s ====| \     ||      ||      ||')
            disp('----------------------/| ------------------- |\----------------------')
            disp('                     / |---------------------| \ ')

            fprintf('A temple in the side of a mountain. The winds die down and time seems to\n')
            fprintf('stop in place. The calm before the storm...\n')
            disp('=========================================================================')
            k=getkey;
            
            disp('===============================================================================')
            fprintf('A man and beast like no other, history is in the making\n')
            disp('                              _')
            disp(' ZOMBIE WRAITH              ==(W{==========-      /===-')
            disp('                              ||  (.--.)         /===-_---~~~~~~~~~------____')
            disp('                              | \_,|**|,__      |===-~___                _,-''  ')
            disp('                 -==\\        `\ '' `--''   ),    `//~\\   ~~~~`---.___.-~~')
            disp('             ______-==|        /`\_. .__/\ \    | |  \\           _-~`')
            disp('       __--~~~  ,-/-==\\      (   | .  |~~~~|   | |   `\        ,''')
            disp('    _-~       /''    |  \\     )__/==0==-\<>/   / /      \      /')
            disp('  .''        /       |   \\      /~\___/~~\/  /'' /        \   /''')
            disp(' /  ____  /         |    \`\.__/-~~   \  |_/''  /          \/''')
            disp('/-''~    ~~~~~---__  |     ~-/~         ( )   /''        _--~`')
            disp('                  \_|      /        _) | ;  ),   __--~~')
            disp('                    ''~~--_/      _-~/- |/ \   ''-~ \           ')  
            disp('                   {\__--_/}    / \\_>-|)<__\      \')
            disp('                   /''   (_/  _-~  | |__>--<__|      | ')
            disp('                  |0 0_/) )-~     | |__>--<__|      |   ')
            disp('                  / /~ ,_/       / /__>---<__/      |  ')
            disp('                 o-o _//        /-~_>---<__-~      / ')
            disp('                 (^(~          /~_>---<__-      _-~              ')
            disp('                ,/|           /__>--<__/     _-~                 ')
            disp('             ,//(''(          |__>--<__|     /                  .----_ ')
            disp('            ( ( ''))          |__>--<__|    |                 /'' _---_~\')
            disp('         `-)) )) (           |__>--<__|    |               /''  /     ~\`\')
            disp('        ,/,''//( (             \__>--<__\    \            /''  //        ||')
            disp('      ,( ( ((, ))              ~-__>--<_~-_  ~--____---~'' _/''/        /"')
            disp('    `~/  )` ) ,/|                 ~-_~>--<_/-__       __-~ _/ ')
            disp('  ._-~//( )/ )) `                    ~~-''_/_/ /~~~~~~~__--~ ')
            disp('   ;''( '')/ ,)(                              ~~~~~~~~~~ ')
            disp('  '' '') ''( (/ ')
            disp('===============================================================================')
            k=getkey;
            combat('Zombie Wraith',250,50,50,10,9)
            k=getkey;
            fprintf('\n\n')
            disp('__      _______ _____ _______ ____  _______     __')
            disp('\ \    / /_   _/ ____|__   __/ __ \|  __ \ \   / /')
            disp(' \ \  / /  | || |       | | | |  | | |__) \ \_/ / ')
            disp('  \ \/ /   | || |       | | | |  | |  _  / \   /  ')
            disp('   \  /   _| || |____   | | | |__| | | \ \  | |   ')
            disp('    \/   |_____\_____|  |_|  \____/|_|  \_\ |_| ')
            disp('=======================================================================')
            fprintf('The curse over this forsaken land is lifted with the death\n')
            fprintf('of the Zombie Wraith. The warmth of a faraway star shines in\n')
            fprintf('through the cracks in the ceiling. The light catches the spoils\n')
            fprintf('of battle, a sword of legend...\n\n')
            disp('              />')
            disp(' (           //------------------------------------------------------(')
            disp('(*)OXOXOXOXO(*>                  --------                             \')
            disp(' (           \\--------------------------------------------------------)')
            disp('              \> ')
            disp('=========================================================================')
            k=getkey;
            ice_boss=true; 
            health=health+40;
            sword_type=sword_type+1.5;
            disp('=======================================================================')
            fprintf('Amid the ruins of the battle you see the remains of the last explorer\n')
            fprintf('to try his luck against the wraith. You find what''s left of his weapon\n')
            fprintf('and the location of his ship. Perhaps this is the ship Ivan had mentioned...\n')
            disp('                           .===;========.__, ')
            disp('                           (\__)___________| ')
            disp('     L__________________,--,--/ /-,-,-\ \-,   ________')   
            disp('=====)o o o o ======== )) ____,===,___""" "7_/_,_,_,_,''---,-,')
            disp('     `--._,_,_,-,--,--"'' (____| _ \___\oo ; ; ; ; ; ;_____ T|')
            disp('              `-''--''-/_,-------| ) ___--,__,------._ \__  |I|')
            disp('                       \==----/   \\ )\--\_         `-._`-''I|')
            disp('                       /=[ER]/     `"==.- -\            `-.L|')
            disp('                      /==---/           \- -\')
            disp('                     ''-.__/             \__7  ')            
            disp('=======================================================================')
            k=getkey;
            gun_type=gun_type+1.5;
            ship_type=ship_type+1;
            ice_1
        end
        fprintf('\nYou see the ice fields and the destroyed temple in the distance,\n')
        fprintf('good thing its all over...\n')  
        k=getkey;
        ice_1
    end
end

%==========================================================================
                                %DESERT
%==========================================================================
function desert_1
global ship_type
global dino1
global boss_ded
global shield_type
global sword_type
global health
global gun_type
disp('=======================================================================================================')
disp('| Undying Desert |    ')                          
disp(' =============== ')       
disp('                                               _')
disp('                 ___                          (_)')
disp('               _/XXX\')
disp('_             /XXXXXX\_                                  __')
disp('X\__    __   /X XXXX XX\                        _       /XX\__      ___')
disp('    \__/  \_/__       \ \                     _/X\__   /XX XXX\____/XXX\')
disp('  \  ___   \/  \_      \ \               __   _/      \_/  _/  -   __  -  \__/')
disp(' ___/   \__/   \ \__     \\__           /  \_//  _ _ \  \     __  /  \____//')
disp('/  __    \  /     \ \_   _//_\___     _/    //           \___/  \/     __/')
disp('__/_______\________\__\_/________\_ _/_____/_____________/_______\____/_______')
disp('   `            .          `                                 .           `         ')
disp('          `                         .                 `            `.         `    ')
disp('      ,                ` .              `               .          ,  .           ')
disp('.   `                .           `                 `.                .`          ,  ')
disp('   `            .          `                                 .           `         ')               
fprintf('\n')
fprintf('It''s hot, the sun is blinding, the sand scorching, and your heart is racing. You can hear\n')
fprintf('roars in the distance from creatures time has long ago forgotten.\n')
disp('=======================================================================================================')
fprintf('\n')
disp(' --------------------------------')
fprintf('| A: Ship                        |\n')
fprintf('| B: Explore                     |\n')
disp(' --------------------------------')

done=false;
while done==false
    response=input('\n','s');   
    if response=='a' | response=='A'
        sand_ship
        done=true;
    elseif response=='b' | response=='B'
        sand_explore
        done=true;
    else
        fprintf('\nInvalid Input, please try again. \n')
        done=false; 
    end        
end
    function sand_ship
        disp('===================================================')
        ship_show(ship_type)
        disp('============================================================')
        fprintf('| Loading Transportation Interface: Choose a Destination |\n')
        disp('============================================================')
        pause(1)
        map
    end
    function sand_explore
        stop=0;
        while stop<=3
            if rand()<=0.3
                disp('===================================================')
                fprintf('A giant scorpion emerges from the ground...\n')        
                disp('       ___ __ ')
                disp('     _{___{__}\')
                disp('    {_}      `\)            ')
                disp('   {_}        `            _.-""""--.._')
                disp('   {_}                    //''.--.  \___`.')
                disp('    { }__,_.--~~~-~~~-~~-::.---. `-.\  `.)')
                disp('     `-.{_{_{_{_{_{_{_{_//  -- 8;=- `')
                disp('        `-:,_.:,_:,_:,.`\\._ ..''=- , ')
                disp('            // // // //`-.`\`   .-''/')
                disp('           << << << <<    \ `--''  /----)')
                disp('            ^  ^  ^  ^     `-.....--""" ')
                disp('===================================================')
                k=getkey;
                combat('Scorpion',110,20,18,10,10)
                fprintf('\n')
                disp('=========================================================')
                fprintf('You survive the battle knowing much worse is to come\n')
                disp('=========================================================')
                fprintf('\n\n')
                k=getkey;
                stop=stop+1;
            elseif rand()<=0.5
                disp('=====================================================================')
                fprintf('A prehistoric beast swoops in from above...\n')
                disp('                                 <\              _')
                disp('                                  \\          _/{')
                disp(' Terrordactyl              _       \\       _-   -_')
                disp('                         /{        / `\   _-     - -_')
                disp('                       _~  =      ( @  \ -        -  -_')
                disp('                     _- -   ~-_   \( =\ \           -  -_')
                disp('                   _~  -       ~_ | 1 :\ \      _-~-_ -  -_')
                disp('                 _-   -          ~  |V: \ \  _-~     ~-_-  -_')
                disp('              _-~   -            /  | :  \ \            ~-_- -_')
                disp('           _-~    -   _.._      {   | : _-``               ~- _-_')
                disp('        _-~   -__..--~    ~-_  {   : \:}')
                disp('      =~__.--~~              ~-_\  :  /')
                disp('                                 \ : /__')
                disp('                                //`Y''--\\')
                disp('                               <+       \\')
                disp('                                \\      WWW      ')
                disp('                                '' ')      
                disp('=====================================================================')
                k=getkey;
                combat('Terrordactyl',125,25,10,5,11)
                fprintf('\n')
                disp('==========================================================')
                fprintf('You slay the beast and continue your ill-fated adventure.\n')
                disp('==========================================================')
                fprintf('\n\n')
                k=getkey;
                stop=stop+1;
            else
                disp('=====================================================================')
                fprintf('You awake one very angry Dimetrodon....\n')
                disp('                                _._')
                disp('                              _/:|:')
                disp('                             /||||||.')
                disp(' Dimetrodon                  ||||||||.')
                disp('                            /|||||||||:')
                disp('                           /|||||||||||')
                disp('                          .|||||||||||||')
                disp('                          | ||||||||||||:')
                disp('                        _/| |||||||||||||:_=---.._')
                disp('                        | | |||||:||||:||  ''~-._  ''-.')
                disp('                      _/| | ||''         ''-._   _:    ;')
                disp('                      | | | ''               ''~~     _;')
                disp('                      | ''                _.=._    _-~')
                disp('                   _.~                  {     ''-_''')
                disp('           _.--=.-~       _.._          {_       }')
                disp('       _.-~   @-,        {    ''-._     _. ''~==+  |')
                disp('      (''          }       \_      \_.=~       |  |')
                disp('      `,,,,,,,''  /_         ~-_    )         <_oo_>')
                disp('        `-----~~/ /''===...==='' +   /')
                disp('               <_oo_>         /  //')
                disp('                             /  //')
                disp('                            <_oo_>    ')
                disp('=====================================================================')
                k=getkey;
                combat('Dimetrodon',135,30,10,5,12)
                if dino1==true;
                    fprintf('\n')
                    disp('==========================================================')
                    fprintf('You defeat the angry dino who decides to go back to napping\n')
                    disp('==========================================================')
                    fprintf('\n\n')
                    k=getkey;
                else
                    fprintf('\n')
                    disp('==========================================================')
                    fprintf('You defeat the angry dino who decides to go back to napping\n')
                    fprintf('For your troubles you find a new shield module!.\n\n')
                    shield_disp(1)
                    disp('==========================================================')
                    fprintf('\n\n')
                    k=getkey;
                    shield_type=shield_type+1;
                    dino1=true;                    
                end
                stop=stop+1;
            end
        end
        
        if boss_ded==false
            fprintf('You seem to have cleared through the unending desert and you see a monolith\n')
            fprintf('in the distance. Do you want to continue exploring?\n')
            fprintf('A: Yes\n')
            fprintf('B: No\n')
            ent=false;
            while ent==false
                ans=input('\n','s');
                if ans=='A' | ans=='a'
                    dino_boss
                    ent=true;
                elseif ans=='B' |ans=='b'
                    desert_1
                    ent=true;
                else
                    fprintf('Invalid Entry, please retry\n')
                    ent=false;
                end    
            end
        else
            fprintf('You see the monolith in the distance and thank your lucky starts that you\n')
            fprintf('are still alive.\n')
            k=getkey;
            desert_1
        end   
    end

    function dino_boss
        fprintf('\n\n')
            disp('=========================================================================')
            disp('                              A')
            disp('                             /_\')
            disp('                     :      /_|_\')
            disp('                    :::    /|__|_\')
            disp('                   ::.::  /|_|__|_\      :')
            disp('                  ::.:.::/__|_|__|_\    :.:')
            disp('                 :..:.:./_|__|__|__|\  :.:.:')
            disp('                :.:..:./|__|___|__|__\:.:..::')
            disp(' ..............::..:../__|___|__|___|_\..:..::................')
            disp('    ..........:..:..:/_|__|___|___|___|\:..:..::::::::::::::::::::')
            disp('::::::::::::::.:..:./___|___|___|___|___\....................')
            disp('        .........../..!...!...!...!...!..\...............')
            fprintf('The monolith stands still in place, the heat seems to dissipate and you\n')
            fprintf('feel at peace. Its the calm before the storm...\n')
            disp('=========================================================================')
            k=getkey;
            fprintf('\n')
            disp('===============================================================================')
            fprintf('The earth trembles with every step, the king of the dinosaurs is here...\n\n')
            disp('                                              ____')
            disp('   ___        Tyrantosaurus Rex             .-~. /_"-._')
            disp('  `-._~-.                                  / /_ "~o\  :Y')
            disp('      \  \                                / : \~x.  ` '')')
            disp('       ]  Y                              /  |  Y< ~-.__j')
            disp('      /   !                        _.--~T : l  l<  /.-~')
            disp('     /   /                 ____.--~ .   ` l /~\ \<|Y')
            disp('    /   /             .-~~"        /| .    '',-~\ \L|')
            disp('   /   /             /     .^   \ Y~Y \.^>/l_   "--''')
            disp('  /   Y           .-"(  .  l__  j_j l_/ /~_.-~    .')
            disp(' Y    l          /    \  )    ~~~." / `/"~ / \.__/l_')
            disp(' |     \     _.-"      ~-{__     l  :  l._Z~-.___.--~')
            disp(' |      ~---~           /   ~~"---\_  '' __[>')
            disp(' l  .                _.^   ___     _>-y~')
            disp('  \  \     .      .-~   .-~   ~>--"  /')
            disp('   \  ~---"            /     ./  _.-''')
            disp('    "-.,_____.,_  _.--~\     _.-~')
            disp('                ~~     (   _}  ')
            disp('                        `. ~(')
            disp('                          )  \')
            disp('                         /,`--''~\--'' ')
            disp('===============================================================================')
            k=getkey;
            combat('Tyrantosaurus Rex',200,20,50,5,13)
            k=getkey;
            fprintf('\n\n')
            disp('__      _______ _____ _______ ____  _______     __')
            disp('\ \    / /_   _/ ____|__   __/ __ \|  __ \ \   / /')
            disp(' \ \  / /  | || |       | | | |  | | |__) \ \_/ / ')
            disp('  \ \/ /   | || |       | | | |  | |  _  / \   /  ')
            disp('   \  /   _| || |____   | | | |__| | | \ \  | |   ')
            disp('    \/   |_____\_____|  |_|  \____/|_|  \_\ |_| ')
            disp('===================================================================')
            fprintf('The T-Rex hits the floor with a deafening thud. You wonder what\n')
            fprintf('was worse, the battle or the terrible pun for a name that T-Rex had.\n')
            fprintf('You decide definitely the pun as a beacon of light explodes from the\n')
            fprintf('monolith revealing a path inside...\n')
            disp('===================================================================')
            k=getkey;
            disp('====================================================================')
            fprintf('Inside you find a true hero''s sword and gun. Alongside a note\n')
            fprintf('from Ivan: "Sojourner well done, meet me in the inn for further\n')    
            fprintf('information."\n\n')

            disp('              /\                               ______,....----,')
            disp('/VVVVVVVVVVVVVV|===================""""""""""""       ___,..-''')
            disp('`^^^^^^^^^^^^^^|======================----------""""""')
            disp('              \/ ')
            disp('                               ____________')
            disp('                              |____________|')
            disp(' ______________________________||________||___')
            disp('[_______________________,----------._ [====]o''""-,__....----=====')
            disp('                  [____(oooooooooooo)___________/__________     |')
            disp('                        //""""""""""  |====| [_)           \    |')
            disp('                       // \\          |====|                \   |')
            disp('                      //   \\         |====|                 """"')
            disp('                     (_)   (_)        `----'' ')
 
            disp('====================================================================')
            k=getkey;
            boss_ded=true; 
            health=health+30;
            sword_type=sword_type+1;
            gun_type=gun_type+1;
            desert_1
        
    end

end

%==========================================================================
                                %PARADISE
%==========================================================================
function paradise_1
global ship_type
global tony_ded
global tony_result
global name

disp('===========================================================================================')
disp('| Paradise |    ')                          
disp(' ========== ')  
disp('.             .        .     .     |--|--|--|--|--|--|  |===|==|   /    i')
disp('        .            ______________|__|__|__|__|__|_ |  |===|==|  *  . /=\')
disp('__ *            .   /______________________________|-|  |===|==|       |=|  .')
disp('__|  .      .   .  //______________________________| :----------------------.')
disp('__|   /|\      _|_|//       ooooooooooooooooooooo  |-|                      |')
disp('__|  |/|\|__   ||l|/,-------8                   8 -| |      WELCOME TO      |')
disp('__|._|/|\|||.l |[=|/,-------8|HOTEL-CASINO-BAR-|8 -|-|                      |')
disp('__|[+|-|-||||li|[=|---------8|SLOTS-GIRLS-BUFFE|8 -| |     PARADISE CITY    |')
disp('_-----.|/| //:\_[=|\`-------8                   8 -|-|                      |')
disp(' /|  /||//8/ :  8_|\`------ 8ooooooooooooooooooo8 -| |      <><><><><><>    |')
disp('/=| //||/ |  .  | |\\_____________  ____  _________|-|                      |')
disp('==|//||  /   .   \ \\_____________ |X|  | _________| `---==------------==---'' ')
disp('==| ||  /         \ \_____________ |X| \| _________|     ||            ||')
disp('==| |~ /     .     \')
disp('==|/  /             \______________________________________________________')
fprintf('\n')
fprintf('\n It smells bad, looks bad, feels bad man. Just get in, kill Tony, get out.\n')
disp('===========================================================================================')
fprintf('\n')
disp(' --------------------------------')
fprintf('| A: Ship                        |\n')
fprintf('| B: Hit the Casino              |\n')
disp(' --------------------------------')

done=false;
while done==false
    response=input('\n','s');   
    if response=='a' | response=='A'
        par_ship
        done=true;
    elseif response=='b' | response=='B'
        par_explore
        done=true;
    else
        fprintf('\nInvalid Input, please try again. \n')
        done=false; 
    end        
end
    function par_ship
        disp('===================================================')
        ship_show(ship_type)
        disp('============================================================')
        fprintf('| Loading Transportation Interface: Choose a Destination |\n')
        disp('============================================================')
        pause(1)
        map
    end
    function par_explore
        if tony_result==false
        fprintf('\n')
        disp('====================================================================')
        fprintf('The place is packed with faces from all over the galaxy. I''m\n')
        fprintf('approached by one of the robot thugs, gotta think fast...\n')
        disp('====================================================================')
        fprintf('\n')
        k=getkey;
        fprintf('Gunman: Hey you, no weapons allowed past this point. Hand them over.\n')
        fprintf('A: Ha fat chance\nB: I''m here to talk to Tony\n')
        l=false;
        while l==false
            in=input('\n','s');
            if in=='A' | in=='a'
                fprintf('\nGunman: Well is that so, boys we''ve got a trouble maker.\n')
                k=getkey;
                l=true;
                thug_fight
            elseif in=='b' | in=='B'
                fprintf('\nGunman: Yeah and who are you?\n')
                l=true;
                fprintf('A: The Sojourner, now move.\nB: An old friend\nC: Tim?\n')  
            else
                fprintf('\nInvalid Input, please try again\n')
            end
        end
        l=false;
        while l==false
            in=input('\n','s');
            if in=='A' | in=='a'
                fprintf('\nGunman: Sojourner? What kind of dumb name is that?\n')
                k=getkey;
                l=true;
                thug_fight
            elseif in=='b' | in=='B'
                fprintf('\nGunman: Ha well let me show you how we treat old friends around here.\n')
                k=getkey;
                l=true;
                thug_fight
            elseif in=='c' | in=='C'
                if rand()<=0.7
                    fprintf('\nGunman: Timbo! Why didn''t you say so, Tony is in the back\n\n\n')
                    k=getkey;
                    l=true;
                    tony_talk
                else
                    fprintf('\nGunman: Tim you chose a bad time to come ''round here.\n')
                    k=getkey;
                    l=true;
                    thug_fight                    
                end
            else
                fprintf('\nInvalid Input, please try again\n')
            end
        end
        elseif tony_result==true & tony_ded==false
            fprintf('Tony: Whatcha still doing here? Find whoever put you in this mess kid.\n')
            k=getkey;
            paradise_1
        elseif tony_result==true & tony_ded==true
            fprintf('\n')
            disp('====================================================================')
            fprintf('This place is a mess, gangsters running everywhere, looting, and\n')
            fprintf('some not so happy gamblers. Better get out of here before they\n')
            fprintf('recognize me. I really have to find Ivan.\n')
            disp('====================================================================')
            fprintf('\n')
            k=getkey;
            paradise_1
        else
            paradise_1
        end
    end

    function thug_fight
        fprintf('\n')
        disp('======================================================')
        fprintf('The first thug draws his weapon, its go time...\n')
        disp('          __ ___'',')
        disp('         /        \                ')
        disp('      ----,------.._--')
        disp('         (      o  o)        GUNMAN')
        disp('        _.`--------''')
        disp('      .~  ~.   . `-.-~~~-.___      ____')
        disp('      (     )   \       \    ~~~~~~ .--''')
        disp('    .-~    /     ) ..___.-----------~')
        disp('   /     > `-._  |/')
        disp('  (      \     ~~--._')
        disp('   `-.    \   //     ~~--.')
        disp('      `-.  ~-.\\ /~-._  /X\')
        disp('         `-=-._:=--. / |XOX|')
        disp('           |  |     ~-._\X/')
        disp('         .--.-~~-.')
        disp('        / ++| xx |  ')
        disp('       / ++/| xx | ')
        disp('======================================================')
        k=getkey;
        combat('Gunman',200,40,20,10,15)
        fprintf('\n')
        disp('==========================================================')
        fprintf('The first gunman goes down, you dart to the back where\n')
        fprintf('you think you''ll find Tony, one of his personal guards\n')
        fprintf('the way...\n')
        disp('==========================================================')
        k=getkey;
        fprintf('\n')
        disp('=================================================') 
        fprintf('One more to go before Tony...\n')
        disp('  _              __,_')
        disp('  \\            /    \')
        disp('   \\_       ---_.-._---')
        disp('    X:\        (_/ \_)')
        disp('    \::\       ( ==  )')
        disp('     \::\       \== /')
        disp('    /X:::\   .-./`-''\.--.')
        disp('    \\/\::\ / /  / \ (    l')
        disp('     ~\ \::\ /   \ / `.   L.')
        disp('       \/:::|    | |   `."  `')
        disp('       /:/\:|    | |b     `.')
        disp('       \/`-''`.  \_/      >    )')
        disp('              \       //  .-''')
        disp('               |     /(  .''')
        disp(' Tony''s       `-..-''_ \  \')
        disp(' Right-Hand    __||/_ \ `-''')
        disp(' Man          / _ \ #  |')
        disp('             |  #  |#  |  ') 
        disp('             |  #  |#  | ')
        disp('==================================================') 
        k=getkey;
        combat('Henchman',235,50,30,5,15)
        fprintf('\n')
        disp('================================================================')
        fprintf('The Henchman hits the floor with a satisfying thud, circuitry\n')
        fprintf('and gears everywhere, it''s not a pretty sight.\n')
        disp('================================================================')
        k=getkey;
        fprintf('\n')
        disp('================================================================')
        fprintf('You open the backdoor and there he is, silent as ghost sitting\n')
        fprintf('in the middle of the room watching your every step...\n')
        disp('================================================================')
        fprintf('\n')
        k=getkey;
        tony_talk   
    end
    function tony_talk
        fprintf('Tony: So who might you be? You put on a good show back there.\n')
        fprintf('A: The Sojourner\nB: %s\n',name)
        l=false;
        while l==false
            in=input('\n','s')
            if in=='A' | in=='a'
                fprintf('Tony: The Sojourner? What kind of nonsense name is that? Am I\n')
                fprintf('supposed to recognize you from somewhere?\n')
                l=true;
            elseif in=='B'|in=='b'
                fprintf('Tony: %s? Doesn''t ring a bell. Am I supposed to recognize you\n',name)
                fprintf('from somewhere?\n')
                l=true;
            else
                fprintf('\nInvalid Input, please retry\n')
            end
        end
        fprintf('A: You put a bullet in my head at the cemetery...\n')
        fprintf('B: Maybe you''ll remember this  *remove helmet*\n')
        l=false;
        while l==false
            in=input('\n','s');
            if in=='A' | in=='a'|in=='b' | in=='B'
                fprintf('\nTony: You''re that Reza Assassin from a few weeks ago who was gathering\n')
                fprintf('intel on our operations and bringing it back to Earth 2.0 for hit. How the\n')
                fprintf('hell are you still alive?\n')
                l=true;
            else
                fprintf('\nInvalid Input, please retry\n')
            end
        end
        fprintf('A: Reza Assasin?\nB: I''m no assassin, I''m the Sojourner.\n')
        fprintf('C: Listen I didn''t come to talk\n')
        l=false;
        while l==false
            in=input('\n','s');
            if in=='A' | in=='a'
                fprintf('\nTony: Easily the deadliest operation out there, we were lucky to catch before you\n')
                fprintf('finished your job, I was guessing you were going to take me out. Although I doubt\n')
                fprintf('anybody on Earth 2.0 can afford the fee, hell we can''t afford one of you guys. Either\n')
                fprintf('way I''ve done enough talking today, time we put an end to this...\n')
                k=getkey;
                tony_fight
                l=true;
            elseif in=='B'|in=='b'
                fprintf('\nTony: This Sojourner thing you''re on about, who fed you that nonsense? You''re a cold\n')
                fprintf('blooded killer, like me actually. Speaking of which it''s about time we finished this...\n')
                k=getkey;
                tony_fight
                l=true;
            elseif in=='C' | in=='c'
                fprintf('\nTony: As you wish, this time no one is going to be around to pick up what''s left of you...\n')
                k=getkey;
                tony_fight
                l=true;
            else
                fprintf('\nInvalid Input, please retry.\n')
                l=false;
            end
        end 
        
    end

    function tony_fight
        fprintf('\n')
        disp('=================================================') 
        fprintf('Well this is the end, isn''t it? \n')
        disp('              .------.') 
        disp('            .''::::::'' ''.') 
        disp('            |: __   __ |') 
        disp('            | <__] [__>|') 
        disp('            `-.  __  .-''') 
        disp('              | |==| |') 
        disp('              | |==| |') 
        disp('           __.`-[..]-"\__') 
        disp('    _.--:""      ||   _``:::--._') 
        disp('   | |  |.      .:''  (o) ::|  | |') 
        disp('   |_|  |::..  // _       :|  |_|') 
        disp('    ===-|:""" // /.\       |-===\') 
        disp('    |_| `:___//_|[ ]|_____.'' |_| )') 
        disp('    l=l   |\V/_=======_==|   l=l/') 
        disp('  .-l=l   |`"==/=="======|  /|.:') 
        disp('  | l l   |=="======\=_==| `-T l') 
        disp('  `.l_l   |==============|   l_l') 
        disp('    [_]  [__][__]____[_]__]  [_]') 
        disp('    \\\ .".--.- --   --. .`. |||.') 
        disp('    \\\\| |  |    |    |  || ||||  ')  
        disp('     \\\\   ."    |    |  |`.||||  ')  
        disp('      \\\\  | T.O.N.Y | `.  |||||   ') 
        disp('==================================================') 
        k=getkey;
        combat('Tony',300,60,45,10,16)
        fprintf('\n')
        fprintf('Tony: You know it doesn''t have to end like this, someone has clearly been\n')
        fprintf('using you to get to me. I put a bullet in your head to stop you from doing the\n')
        fprintf('same to me, killing me wont''t solve a damn thing.\n')
        fprintf('A: Kill Tony\nB: Spare him\n')
        l=false;
        while l==false
            p=input('\n','s');
            if p=='A' | p=='a'
                disp('====================================================================')
                fprintf('You kill Tony and run out the back door before any other mobsters\n')
                fprintf('show up. You feel like you should feel relieved, but all you are left\n')
                fprintf('with is more questions. If any one knows what this was about its Ivan\n')
                disp('====================================================================')
                k=getkey;
                tony_ded=true;
                tony_result=true;
                paradise_1
            elseif p=='B' | p=='b'
                disp('=========================================================================')
                fprintf('You lower your weapon and Tony gives a nod and points to the back door\n')
                fprintf('as you hear footsteps approach. Tony''s role in all of this isn''t over\n')
                fprintf('and neither is Ivan''s, time to get some answers.\n')
                disp('=========================================================================')
                k=getkey;
                tony_ded=false;
                tony_result=true;
                paradise_1
                
            else
                fprintf('Invalid Input, please retry\n')
            end
        end
    end      

end
%==========================================================================
                                %JUNGLE
%==========================================================================
function jung_1
global ship_type
global vil_1
global mage_ded
global vil_2
global sword_type
global shield_type
global health
global gun_type
global anac

disp('===========================================================================================================')
disp('| Stella Lignum |    ')                          
disp(' =========== ')   
disp('                                                            ---\=,</')
disp('..,.,.,,.,.,.,,.,._,,,____,,,...,.,.,,.....,....,.,..,,.  ,-=--''\\_\/')
disp('""""""""""############z_ _`"""########################'' ,---''>__,>,_`-.     |')
disp('       :  |  `"""V#######,,_ `-  ""##################'' --z--;" /_/  `. `.   |')
disp('          |          `/"""".`|`|| } }|.""""""""|"""""  --''//`/''  `    \  ''. |')
disp('    :          :      |:     ||   |  |  :   :  |   :   ,_\---_\._   :  `.\ |/')
disp('                   :  /  :   |  |   || :  :      :    //--''> ___ ``-,_   \  \')
disp('         `"^            :  ` ||   || |   :  :         ''=-`'','' / `-, __`-. |')
disp('        %#''            :    `| |||    |  :   :      :  // ''\   // | `    | |')
disp('    :         :   `''   :  :  || # | |||    :           // ` // / .     :  | ')
disp('                         :   | ||#|#| | '':    :    :             :       ` ')
disp('        :             :  / >\\> <\/\< </</==::_ |'' ,`  ,.|_____|______|`--|')
disp('   :         :   |    ,''{` /"^"/''/\^\''"\ --  """==;:zz,,_;__ ,; : , ,,   |')
disp('        |    ,,--'' ''  ,` ,'','' ,''`--,._    -=-  /%%\.___     ---          |')
fprintf('\n')
fprintf('All that is known of the planet is that it is densely covered in rain forests and swamps with\n')
fprintf('a mysterious indigenous population. What you know is that you just saw a mosquito larger than your\n')
fprintf('head and the trees look like they''re watching your every move. Hopefully there are''nt anymore \n')
fprintf('spiders.\n')
disp('===========================================================================================================')
fprintf('\n')
disp(' --------------------------------')
fprintf('| A: Ship                        |\n')
fprintf('| B: Village                     |\n')
fprintf('| C: Explore                     |\n')
disp(' --------------------------------')

done=false;
while done==false
    response=input('\n','s');   
    if response=='a' | response=='A'
        jung_ship
        done=true;
    elseif response=='b' | response=='B'
        jung_village
        done=true;
    elseif response=='c'| response=='C'
        jung_explore
        done=true;
    else
        fprintf('\nInvalid Input, please try again. \n')
        done=false; 
    end        
end
    function jung_ship
        disp('===================================================')
        ship_show(ship_type)
        disp('============================================================')
        fprintf('| Loading Transportation Interface: Choose a Destination |\n')
        disp('============================================================')
        pause(1)
        map
    end
    function jung_explore
        fprintf('\n\n')
        disp('====================================================================')
        fprintf('Each step a possible death trap, the forest is humid, dark, and\n')
        fprintf('sprawling with life. You move as silently as possible hoping not to\n')
        fprintf('awaken any concealed horrors.\n')
        disp('====================================================================')
        fprintf('\n\n')
        k=getkey; 
        stop=0;
        while stop<3
            if rand()<=0.66
                disp('===================================================')
                fprintf('You have to battle a frog?\n\n')        
                disp('          ,-.___.-.')
                disp('Frog   ,-.(|)   (|),-.')
                disp('       \_*._ '' ''_.* _/')
                disp('        /`-.`--'' .-''\')
                disp('   ,--./    `---''    \,--.')
                disp('   \   |(  )     (  )|   /')
                disp('    \  | ||       || |  /')
                disp('     \ | /|\     /|\ | /')
                disp('     /  \-._     _,-/  \')
                disp('    //| \\  `---''  // |\\')
                disp('   /,-.,-.\       /,-.,-.\')
                disp('  o   o   o      o   o    o ')
                disp('===================================================')
                k=getkey;
                combat('Frog',100,20,15,20,4)
                fprintf('\n')
                disp('=========================================================')
                fprintf('You defeat the frog, not sure of how to feel about it\n')
                disp('=========================================================')
                fprintf('\n\n')
                k=getkey;
                stop=stop+1;
            else
                disp('===================================================')
                fprintf('An anaconda awakes from its slumber, ready for its\n')
                fprintf('next meal...\n')
                disp('                            __..._              ')
                disp('                        ..-''      o.            ')
                disp('                     .-''            :           ')
                disp('                 _..''             .''__..--<     ')
                disp('          ...--""                 ''-.           ')
                disp('      ..-"                       __.''           ')
                disp('    .''                  ___...--''               ')
                disp('   :        ____....---''                        ')
                disp('  :       .''                                    ')
                disp(' :       :           _____                      ')
                disp(' :      :    _..--"""     """--..__             ')
                disp(':       :  ."                      ""i--.       ')
                disp(':       ''.:                         :    ''.     ')
                disp(':         ''--...___i---""""--..___.''      :    ') 
                disp(' :                 ""---...---""          :    ') 
                disp('  ''.                                     :    ')  
                disp('    ''-.                                 :      ') 
                disp('       ''--...                         .''      ')  
                disp('         :   ""---....._____.....---""         ') 
                disp('         ''.    ''.          ')                     
                disp('           ''-..  ''.     ')                        
                disp('               ''.  :      ')                      
                disp('                : .''     ')                       
                disp('               /  :      ')                       
                disp('             .''   :    ')                         
                disp('           .'' .--''     ')                         
                disp('          ''--'' ')
                disp('===================================================')
                k=getkey;
                combat('Anaconda',125,30,15,5,5)
                fprintf('\n')
                if anac==false
                    disp('=========================================================')
                    fprintf('The beast falls limp, one less death trap to go. Before\n')
                    fprintf('rushing off you find some neat loot from the anaconda''s\n')
                    fprintf('last meal.\n\n')
                    disp(' ,________________________________       ')
                    disp('|__________,----------._ [____]  ""-,__  __...-----==="')
                    disp('        (_(||||||||||||)___________/   ""             |')
                    disp('           `----------''       [ ))"-,                |')
                    disp('                                ""    `,  _,--...___  |')
                    disp('                                        `/          """')
                    disp('=========================================================')
                    k=getkey;
                    gun_type=gun_type+1;
                    anac=true;
                    fprintf('\n\n')
                else
                    fprintf('\n')
                    disp('=========================================================')
                    fprintf('The beast falls limp, one less death trap to go.\n')
                    disp('=========================================================')
                    fprintf('\n\n')
                    k=getkey;                    
                end
                stop=stop+1;
            end
        end
        if vil_1==true & mage_ded==false
            fprintf('\n\n')
            disp('=====================================================================')
            fprintf('You reach a clearing through the thick vegetation and see an old tower.\n')
            fprintf('Could this be the mage''s lair?\n')
            disp('=====================================================================')
            fprintf('\n\n')
            k=getkey; 
        elseif vil_1==false & mage_ded==false
            fprintf('\n\n')
            disp('========================================================================')
            fprintf('You reach a clearing through the thick vegetation and see an old tower.\n')
            fprintf('The air grows cold as you approach and your skin crawls...\n')
            disp('   `,.      .   .        *   .    .      .  _    ..          .')
            disp('     \,~-.         *           .    .       ))       *    .')
            disp('          \ *          .   .   |    *  . .  ~    .      .  .  ,')
            disp(' ,           `-.  .            :               *           ,-')
            disp('  -             `-.        *._/_\_.       .       .   ,-''')
            disp('  -                 `-_.,     |n|     .      .       ;')
            disp('    -                    \ ._/_,_\_.  .          . ,''         ,')
            disp('     -                    `-.|.n.|      .   ,-.__,''         -')
            disp('      -                   ._/_,_,_\_.    ,-''              -')
            disp('      -                     |..n..|-`''-''                -')
            disp('       -                 ._/_,_,_,_\_.                 -')
            disp('         -               ,-|...n...|                  -')
            disp('           -         ,-''._/_,_,_,_,_\_.              -')
            disp('             -  ,-=-''     |....n....|              -')
            disp('              -;       ._/_,_,_,_,_,_\_.         -')
            disp('             ,-          |.....n.....|          -')
            disp('           ,;         ._/_,_,_,_,_,_,_\_.         -')
            disp('  `,  ''.  `.  ".  `,  ''.| n   ,-.   n |  ",  `.  `,  ''.  `,  '',')
            disp(',.:;..;;..;;.,:;,.;:,o__|__o !.|.! o__|__o;,.:;.,;;,,:;,.:;,;;:')
            disp(' ][  ][  ][  ][  ][  |_i_i_H_|_|_|_H_i_i_|  ][  ][  ][  ][  ][')
            disp('                     |     //=====\\     |')
            disp('                     |____//=======\\____|')
            disp('                         //=========\\ ')
            disp('========================================================================')
            fprintf('\n\n')
            k=getkey; 
        elseif mage_ded==true
            fprintf('\n\n')
            disp('=====================================================================')
            fprintf('You reach a clearing through the thick vegetation and see the old tower.\n')
            fprintf('A reminder of battles won and foes slain.\n')
            disp('   `,.      .   .        *   .    .      .  _    ..          .')
            disp('     \,~-.         *           .    .       ))       *    .')
            disp('          \ *          .   .   |    *  . .  ~    .      .  .  ,')
            disp(' ,           `-.  .            :               *           ,-')
            disp('  -             `-.        *._/_\_.       .       .   ,-''')
            disp('  -                 `-_.,     |n|     .      .       ;')
            disp('    -                    \ ._/_,_\_.  .          . ,''         ,')
            disp('     -                    `-.|.n.|      .   ,-.__,''         -')
            disp('      -                   ._/_,_,_\_.    ,-''              -')
            disp('      -                     |..n..|-`''-''                -')
            disp('       -                 ._/_,_,_,_\_.                 -')
            disp('         -               ,-|...n...|                  -')
            disp('           -         ,-''._/_,_,_,_,_\_.              -')
            disp('             -  ,-=-''     |....n....|              -')
            disp('              -;       ._/_,_,_,_,_,_\_.         -')
            disp('             ,-          |.....n.....|          -')
            disp('           ,;         ._/_,_,_,_,_,_,_\_.         -')
            disp('  `,  ''.  `.  ".  `,  ''.| n   ,-.   n |  ",  `.  `,  ''.  `,  '',')
            disp(',.:;..;;..;;.,:;,.;:,o__|__o !.|.! o__|__o;,.:;.,;;,,:;,.:;,;;:')
            disp(' ][  ][  ][  ][  ][  |_i_i_H_|_|_|_H_i_i_|  ][  ][  ][  ][  ][')
            disp('                     |     //=====\\     |')
            disp('                     |____//=======\\____|')
            disp('                         //=========\\ ')
            disp('=====================================================================')
            fprintf('\n\n')
            k=getkey; 
            jung_1
        else
        end 
        disp('==========================================================')
        fprintf('The Mage speaks angrily in a foreign tongue drawing his\n')
        fprintf('staff. Prepare for battle.\n')
        disp('              _,-''|')
        disp(' Mortius    ,-''._  |')
        disp(' .||,      |####\ |')
        disp('\.`'',/     \####| |')
        disp('= ,. =      |###| |')
        disp('/ || \    ,-''\#/,''`.')
        disp('  ||     ,''   `,,. `.')
        disp('  ,|____,'' , ,;'' \| |')
        disp(' (3|\    _/|/''   _| |')
        disp('  ||/,-''  | >-'' _,\\')
        disp('  ||''      ==\ ,-''  ,''')
        disp('  ||       |  V \ ,|')
        disp('  ||       |    |` |')
        disp('  ||       |    |   \')
        disp('  ||       |    \    \')
        disp('  ||       |     |    \')
        disp('  ||       |      \_,-''')
        disp('  ||       |___,,--")_\')
        disp('  ||         |_|   ccc/')
        disp('  ||        ccc/')
        disp('  ||           ')  
        disp('==========================================================')
        k=getkey;
        combat('Mortius',200,20,30,10,6)
        fprintf('\n\n')
        disp('__      _______ _____ _______ ____  _______     __')
        disp('\ \    / /_   _/ ____|__   __/ __ \|  __ \ \   / /')
        disp(' \ \  / /  | || |       | | | |  | | |__) \ \_/ / ')
        disp('  \ \/ /   | || |       | | | |  | |  _  / \   /  ')
        disp('   \  /   _| || |____   | | | |__| | | \ \  | |   ')
        disp('    \/   |_____\_____|  |_|  \____/|_|  \_\ |_| ')
        disp('===========================================================')
        fprintf('The Mage crumples into ash...You search the tower and find\n')
        fprintf('the tribespeople in cages. After freeing them you find a\n')
        fprintf('shield upgrade!.\n')
        shield_disp(2)
        disp('===========================================================')
        k=getkey;
        shield_type=shield_type+1.5;
        health=health+30;
        mage_ded=true;
        jung_1
    end
    function jung_village
        if vil_1==false
            fprintf('\n\n')
            disp('============================================================================')       
            fprintf('You approach a small village in a clearing in the trees. The indigenous\n')
            fprintf('people rush to you speaking frantically in what you are certain is gibberish\n')
            disp('   \\\|||///           \\\|||///           \\\|||///')
            disp(' .  =======          .  =======          .  =======')
            disp('/ \| O   O |        / \| O   O |        / \| O   O |')
            disp('\ / \`___''/         \ / \`___''/         \ / \`___''/')
            disp(' #   _| |_           #   _| |_           #   _| |_')
            disp('(#) (     )         (#) (     )         (#) (     ) ')
            disp(' #\//|* *|\\         #\//|* *|\\         #\//|* *|\\ ')
            disp(' #\/(  *  )/         #\/(  *  )/         #\/(  *  )/  ')
            disp(' #   =====           #   =====           #   ===== ')
            disp(' #   ( = )           #   ( = )           #   ( = ) ')
            disp(' #   || ||           #   || ||           #   || ||')
            disp('.#---''| |`----.     .#---''| |`----.     .#---''| |`----. ')
            disp('`#----'' `-----''     `#----'' `-----''     `#----'' `-----'' ')
            disp('============================================================================')
            fprintf('\n\n')
            k=getkey; 
            disp('==========================================================================')
            fprintf('After a few moments of confusion your helmet recognizes the dialect\n')
            fprintf('and begins to translate. The pixie people beg for your help to save their\n')
            fprintf('people who have been abducted by an evil mage Mortius. I can find the\n')
            fprintf('sorcerer in the forest. Might be worth the trouble...\n')
            disp('==========================================================================')
            k=getkey;
            vil_1=true;
            jung_1
        elseif vil_2==false & mage_ded==true
            fprintf('\n\n')
            disp('============================================================================')       
            fprintf('The tribes people are in celebration as they give you a hero''s welcome.\n')
            fprintf('amidst the celebration they bring you the sword of the chief\n\n')
            disp('   \\\|||///           \\\|||///           \\\|||///')
            disp(' .  =======          .  =======          .  =======')
            disp('/ \| O   O |        / \| O   O |        / \| O   O |')
            disp('\ / \`,v,''/         \ / \`,v,''/         \ / \`,v,''/')
            disp(' #   _| |_           #   _| |_           #   _| |_')
            disp('(#) (     )         (#) (     )         (#) (     ) ')
            disp(' #\//|* *|\\         #\//|* *|\\         #\//|* *|\\ ')
            disp(' #\/(  *  )/         #\/(  *  )/         #\/(  *  )/  ')
            disp(' #   =====           #   =====           #   ===== ')
            disp(' #   ( = )           #   ( = )           #   ( = ) ')
            disp(' #   || ||           #   || ||           #   || ||')
            disp('.#---''| |`----.     .#---''| |`----.     .#---''| |`----. ')
            disp('`#----'' `-----''     `#----'' `-----''     `#----'' `-----'' ')
            fprintf('\n')
            disp('         />_________________________________')
            disp('[########[]_________________________________>')
            disp('         \>                  CHIEF')
            fprintf('\n')
            disp('============================================================================')
            fprintf('\n')
            k=getkey; 
            sword_type=sword_type+1;
            vil_2=true;
            jung_1
        elseif vil_2 ==true & mage_ded==true
            fprintf('\n\n')
            disp('==============================================================================')       
            fprintf('The villagers kindly embrace you as one of their own and give gifts and treats.\n')
            fprintf('\n')
            disp('   \\\|||///           \\\|||///           \\\|||///')
            disp(' .  =======          .  =======          .  =======')
            disp('/ \| O   O |        / \| O   O |        / \| O   O |')
            disp('\ / \`,v,''/         \ / \`,v,''/         \ / \`,v,''/')
            disp(' #   _| |_           #   _| |_           #   _| |_')
            disp('(#) (     )         (#) (     )         (#) (     ) ')
            disp(' #\//|* *|\\         #\//|* *|\\         #\//|* *|\\ ')
            disp(' #\/(  *  )/         #\/(  *  )/         #\/(  *  )/  ')
            disp(' #   =====           #   =====           #   ===== ')
            disp(' #   ( = )           #   ( = )           #   ( = ) ')
            disp(' #   ( = )           #   ( = )           #   ( = ) ')
            disp(' #   || ||           #   || ||           #   || ||')
            disp('.#---''| |`----.     .#---''| |`----.     .#---''| |`----. ')
            disp('`#----'' `-----''     `#----'' `-----''     `#----'' `-----'' ')
            disp('==============================================================================')
            fprintf('\n\n')
            health=health+1;
            k=getkey; 
            jung_1
        else
            fprintf('\n\n')
            disp('============================================================================')       
            fprintf('You approach a small village in a clearing in the trees. The indigenous\n')
            fprintf('people rush to you for news over the imprisoned villagers.\n')
            disp('   \\\|||///           \\\|||///           \\\|||///')
            disp(' .  =======          .  =======          .  =======')
            disp('/ \| O   O |        / \| O   O |        / \| O   O |')
            disp('\ / \`___''/         \ / \`___''/         \ / \`___''/')
            disp(' #   _| |_           #   _| |_           #   _| |_')
            disp('(#) (     )         (#) (     )         (#) (     ) ')
            disp(' #\//|* *|\\         #\//|* *|\\         #\//|* *|\\ ')
            disp(' #\/(  *  )/         #\/(  *  )/         #\/(  *  )/  ')
            disp(' #   =====           #   =====           #   ===== ')
            disp(' #   ( = )           #   ( = )           #   ( = ) ')
            disp(' #   ( = )           #   ( = )           #   ( = ) ')
            disp(' #   || ||           #   || ||           #   || ||')
            disp('.#---''| |`----.     .#---''| |`----.     .#---''| |`----. ')
            disp('`#----'' `-----''     `#----'' `-----''     `#----'' `-----'' ')
            disp('============================================================================')
            fprintf('\n\n')
            k=getkey;
            jung_1
        end
        
    end


end

function final_scene
global tony_ded
global vil_2
disp('====================================================================')
disp('       *        *          __ *      ,    .     *         . ')
disp('            ,__   /     _ /'' *        .          *')
disp('   .    *          \\/---./  \\    `/_          *     ')
disp('               *  .''\\, // ''./\\  //    *          ')
disp('                 / --\\//    \ \\//   ___       .    *  .')
disp('    *    .      :     \#\     :/ /  //--``        ')
disp('                ''  __/ \ (_/  ( (  //       *       .   *')
disp(' .            *  \  _\  \ \/ / \ \//  .   _  ')
disp('      *           _( )_  ) )''_//\  \    _( )_ .   * ')
disp('   _       .      |___|\/#(.--''_/"\ \  /|___|        .   * _ ')
disp(' _( )_            |_|_|\ ,/        \ \//|_|_|            _( )_')
disp('|___|/\/\/\/\/\/\|___|/#(,&.-----.&\  (|___|/\/\/\/\/\/\|___|')
disp('|_|_|\/\/\/\/\/\/|_|_|  /&&|R.I.P|&&\  |_|_|\/\/\/\/\/\/|_|_|')
disp('|___|/\/\/\/\/\/\|___| /&&&|_____|&&&) |___|/\/\/\/\/\/\|___|')
disp('|_|_|\/\/\/\/\/\/|_|_|(  [_________] ~"|_|_|\/\/\/\/\/\/|_|_|')
disp('|___|/\/\/\/\/\/\|___|~  ~~"^"^"^"~~   |___|/\/\/\/\/\/\|___|')
disp('|_|_|\/\/\/\/\/\/|_|_|     _-      _-  |_|_|\/\/\/\/\/\/|_|_|')
disp('|___|/\/\/\/\/\/\|___| _-      _-      |___|/\/\/\/\/\/\|___|')
disp('|_|_|\/\/\/\/\/\/|_|_|   _-         _- |_|_|\/\/\/\/\/\/|_|_|')
disp('[_____]~~"^""^"~~[_____]         _-    [_____]~~"^""^"~~[_____]')
disp('~~"^"~~          ~~"^"~~      _-       ~~"^"~~          ~~"^"~~  ') 
fprintf('Back where you started, you''re chained up and staring down the\n')
fprintf('barrel of Ivan''s .44 surrounded by more thugs armed to the teeth\n')
fprintf('and a freshly dug grave.\n')
disp('====================================================================')
k=getkey;
fprintf('\nIvan: So the days of the Sojourner come to an end. Yeah it was all one big lie\n')
fprintf('but it really was quite beautiful. With some clever story telling and an unfortunate\n')
fprintf('case of amnesia I turned a merciless assassin into my very own puppet, fighting for a\n')
fprintf('cause. In a way you truly became the Sojourner, traveling across the galaxy, conquering\n')
fprintf('foreign lands, and slaying monsters, it was quite the sight. The best part is that you\n')
fprintf('really believed you could be something more than a killer.\n')
k=getkey;
disp('.')
pause(1)
disp('..')
pause(1)
disp('.')
pause(1.5)

if tony_ded==false
    disp('==================================================================')
    fprintf('Just as Ivan is about to pull the trigger shots ring out from the\n')
    fprintf('trees. Ivan and his thugs are gunned down by Tony and his gang.\n\n')
    disp('              .------.') 
    disp('            .''::::::'' ''.') 
    disp('            |: __   __  |') 
    disp('            | <__] [__> |') 
    disp('            `-.      .-''')
    disp('              | \___  |') 
    disp('              | |==|  |') 
    disp('           __.`-[..]-"\__') 
    disp('    _.--:""      ||   _``:::--._') 
    disp('   | |  |.      .:''  (o) ::|  | |') 
    disp('   |_|  |::..  // _       :|  |_|') 
    disp('    ===-|:""" // /.\       |-===\') 
    disp('    |_| `:___//_|[ ]|_____.'' |_| )') 
    disp('    l=l   |\V/_=======_==|   l=l/') 
    disp('  .-l=l   |`"==/=="======|  /|.:') 
    disp('  | l l   |=="======\=_==| `-T l') 
    disp('  `.l_l   |==============|   l_l') 
    fprintf('Tony: Well kid it looks like we are even now. I had some guys keep\n')
    fprintf('an eye on you to see who was behind this all and lo and behold its\n')
    fprintf('my old friend Ivan. He and his mob used to own Paradise City where\n')
    fprintf('they casted out any non-humans and shot first and talked later. Now\n')
    fprintf('that the dust is settled I guess its up to you what you do, the answers\n')
    fprintf('to who you are can be found in the far reaches of the galaxy, but I\n')
    fprintf('think you''ve already found who you are inside. Until later Sojourner.\n')
    k=getkey;
    disp('             \____/       __ ')
    disp('             / ___\      / / ')
    disp('            |: =0 =0    / /  ')
    disp('            |:: __ |   / /   ')
    disp('             \_/LLL\  / /    ')
    disp('       __ __./:__:\._/_/_    ')
    disp('      (##i \ |<__>| / i##)   ')
    disp('      |--|:/\/ :: \/\:|--|   ')
    disp('      |  |:  :====:  :|  |   ')
    disp('     .'':.''Y-" |::| "-Y`.:`.')
    disp('     |__| | : |__|.-.| |__|  ')
    disp('     (##) | : /++\`-''! (##) ')
    disp('      \  \|n._\++/_.n| /  /  ')
    disp('       \ xT::::--::::T/  /   ')
    disp('        \Xl-. `""'' .-lXX''  ')
    disp('         /|: \    / :|       ')
    disp('        / |:  i--i  :|       ')
    disp('       / /|:  |  |  :|       ')
    disp('      / / |___|  |__;|       ')
    disp('     /_/  Y&&&Y  Y&&&Y       ')
    disp('          W###W  W###W       ')
    disp('          |   |  |   |       ')
    fprintf('Maybe everything that happened wasn''t a mistake, what if\n')
    fprintf('this is who I really am, the Sojourner.\n')
    disp('==================================================================')
    k=getkey;
    fprintf('\n\n\n I dont''t know a good function for closing a running matlab script\n')
    fprintf('so just hit ctrl c. Thanks for playing.\n')
    pause(1000)
    
elseif vil_2==true
    disp('==================================================================')
    fprintf('Just as Ivan is about to pull the trigger spears rain down from\n')
    fprintf('the sky. The villagers from Stella Lignum come rushing out of the\n')
    fprintf('trees to beat down the last of Ivan''s thugs.\n')
    disp('   \\\|||///           \\\|||///           \\\|||///')
    disp(' .  =======          .  =======          .  =======')
    disp('/ \| O   O |        / \| O   O |        / \| O   O |')
    disp('\ / \`,v,''/         \ / \`,v,''/         \ / \`,v,''/')
    disp(' #   _| |_           #   _| |_           #   _| |_')
    disp('(#) (     )         (#) (     )         (#) (     ) ')
    disp(' #\//|* *|\\         #\//|* *|\\         #\//|* *|\\ ')
    disp(' #\/(  *  )/         #\/(  *  )/         #\/(  *  )/  ')
    disp(' #   =====           #   =====           #   ===== ')
    disp(' #   ( = )           #   ( = )           #   ( = ) ')
    disp(' #   || ||           #   || ||           #   || ||')
    disp('.#---''| |`----.     .#---''| |`----.     .#---''| |`----. ')
    disp('`#----'' `-----''     `#----'' `-----''     `#----'' `-----'' ')
    fprintf('Villagers: We all wouldn''t be here if it weren''t for you Great\n')
    fprintf('Traveller. We are a strange people who work in mysterious ways, this\n')
    fprintf('was the least we could do for a fellow friend. Safe Travels.\n')
    k=getkey;
    disp('             \____/       __ ')
    disp('             / ___\      / / ')
    disp('            |: =0 =0    / /  ')
    disp('            |:: __ |   / /   ')
    disp('             \_/LLL\  / /    ')
    disp('       __ __./:__:\._/_/_    ')
    disp('      (##i \ |<__>| / i##)   ')
    disp('      |--|:/\/ :: \/\:|--|   ')
    disp('      |  |:  :====:  :|  |   ')
    disp('     .'':.''Y-" |::| "-Y`.:`.')
    disp('     |__| | : |__|.-.| |__|  ')
    disp('     (##) | : /++\`-''! (##) ')
    disp('      \  \|n._\++/_.n| /  /  ')
    disp('       \ xT::::--::::T/  /   ')
    disp('        \Xl-. `""'' .-lXX''  ')
    disp('         /|: \    / :|       ')
    disp('        / |:  i--i  :|       ')
    disp('       / /|:  |  |  :|       ')
    disp('      / / |___|  |__;|       ')
    disp('     /_/  Y&&&Y  Y&&&Y       ')
    disp('          W###W  W###W       ')
    disp('          |   |  |   |       ')
    fprintf('Maybe everything that happened wasn''t a mistake, what if\n')
    fprintf('this is who I really am, the Sojourner.\n')
    disp('==================================================================')
    k=getkey;
    fprintf('\n\n\n I dont''t know a good function for closing a running matlab script\n')
    fprintf('so just hit ctrl c. Thanks for playing.\n')
    pause(1000)
else
end

disp('=========================================================================')
disp('         ______  ___   _   _ _____')
disp('         | ___ \/ _ \ | \ | |  __ \')
disp('         | |_/ / /_\ \|  \| | |  \/')
disp('         | ___ \  _  || . ` | | __ ')
disp('         | |_/ / | | || |\  | |_\ \')
disp('         \____/\_| |_/\_| \_/\____/')
fprintf('\n\n')
fprintf('It all goes dark and you can''t feel a thing, ain''t that a kick to the head...\n')
disp('=========================================================================')
k=getkey;
fprintf('\n\n\n I dont''t know a good function for closing a running matlab script\n')
fprintf('so just hit ctrl c. Thanks for playing.\n')
pause(1000)


end
%==========================================================================
                                %COMBAT
%==========================================================================
                            
% Rock,paper, scissors based combat with shoot,block, and slash. 

function combat(ename,ehealth,estrike,eshot,eblock,num)
global name
global gun_type
global shield_type
global sword_type
global melee1
global shot1
global shield1
global health

stat_stuff= melee1+shot1+shield1;
melee1=(melee1./stat_stuff).*10;
shot1=(shot1./stat_stuff).*10;
shield1=(shield1./stat_stuff).*10;

shot_tally=0;
block_tally=0;
strike_tally=0;

eshot_tally=0;
estrike_tally=0;
eblock_tally=0;

result=false;
inithealth=health;
einithealth=ehealth;
urhealth=health;
urshot=10+(10.*gun_type)+shot1;
urstrike=10+(10.*sword_type)+melee1;
urblock=3+(2.*shield_type)+shield1;

shot3=false;
strike3=false;
block3=false;

eshot3=false;
estrike3=false;
eblock3=false;


while result==false
    fprintf('\n\n\n')
    disp('===================================================')
    fprintf('Opponent: %s, Health:%d\n',ename,ehealth)
    fprintf('You: %s, Health:%d\n',name,urhealth)
    fprintf('\nA: Shoot    B: Strike    C: Block\n\n')
    fprintf('Count: %d       %d            %d\n',shot_tally,strike_tally,block_tally)
    fprintf('Enemy: %d       %d            %d\n',eshot_tally,estrike_tally,eblock_tally)   
    disp('===================================================')
    fprintf('\n')
    
%   opponent move choice / AI

    if ehealth>=(0.3.*einithealth)
        if eshot_tally>=2 & rand()<0.3
            emove='A';
        elseif estrike_tally>=2 & rand()<0.3
            emove='B';
        elseif eblock_tally>=2 & rand()<0.3
            emove='C';
        elseif block_tally>=2 & rand()<0.20
            emove='B';
        elseif shot_tally>=2 & rand()<0.20
            emove='C';
        elseif strike_tally>=2 & rand()<0.20
            emove='A';
        elseif estrike>eshot & rand()<0.15
            emove='B';
        elseif eshot>estrike & rand()<0.15
            emove='A';
        else
            num2=rand();
            if num2<=0.33
                emove='A';
            elseif num2>0.33 & num2<=0.67
                emove='B';
            else
                emove='C';
            end
        end
    else
        if shot_tally>=2 & rand()<0.30
            emove='C';
        elseif block_tally>=2 & rand()<0.30
            emove='B';
        elseif strike_tally>=2 & rand()<0.3
            emove='A';
        elseif eblock_tally>=2 & rand()<0.20
            emove='C';
        elseif eshot_tally>=2 && rand()<0.20
            emove='A';
        elseif estrike_tally>=2 & rand()<0.20
            emove='B';
        elseif estrike>eshot & rand()<0.15
            emove='B';
        elseif eshot>estrike & rand()<0.15
            emove='A';
        else
            num3=rand();
            if num3<=0.33
                emove='A';
            elseif num3>0.33 & num3<=0.67
                emove='B';
            else
                emove='C';
            end
        end      
    end
    
% ur move choice   
    exit1=false;
    while exit1==false
        return2=input('\n','s');
        if return2=='a' | return2=='A'
            urmove='A';
            exit1=true;
        elseif return2=='b' | return2=='B'
            urmove='B';
            exit1=true;
        elseif return2=='c' | return2=='C'
            urmove='C';
            exit1=true;
        else
            fprintf('\nInvalid Input, please try again. \n')
            exit1=false; 
        end
    end
    
%check move multiplication due to tally 
    if shot_tally >=3 & shot3==false
        urshot=urshot.*3;
        shot3=true;
    end
    
    if block_tally>=3 & block3==false
        urblock=urblock.*3;
        block3=true;
    end
    
    if strike_tally>=3 & strike3==false
        urstrike=urstrike.*3;
        strike3=true;
    end
    
    
%check move multiplication due to tally for enemy 
    if eshot_tally >=3 & eshot3==false
        eshot=eshot.*3;
        eshot3=true;
    end
    
    if eblock_tally>=3 & eblock3==false
        eblock=eblock.*3;
        eblock3=true;
    end
    
    if estrike_tally>=3 & estrike3==false
        estrike=estrike.*3;
        estrike3=true;
    end

% check what happens in battle and do the tally
    
    if emove=='A' & urmove=='A'
        if rand()<.60
            fprintf('\nBoth opponents took a shot at one another!\n')
            urhealth=urhealth-(eshot.*0.4);
            ehealth=ehealth-(urshot.*0.4);
            eshot_tally=eshot_tally+1;
            shot_tally=shot_tally+1;
        else
            fprintf('\nThe shots collided!\n')
        end
    elseif emove=='B' & urmove=='B'
        if rand()<.60
            fprintf('\nYou both land a crushing strike!\n')
            urhealth=urhealth-(estrike.*0.4);
            ehealth=ehealth-(urstrike.*0.4);
            estrike_tally=estrike_tally+1;
            strike_tally=strike_tally+1;
        else
            fprintf('\nYou exchange blows\n')
        end
    elseif emove=='C' & urmove=='C'
        if rand()<.60
            fprintf('\nYou both block for an attack that never came...\n')
            urhealth=urhealth+(urblock.*0.2);
            ehealth=ehealth+(eblock.*0.2);
            eblock_tally=eblock_tally+1;
            block_tally=block_tally+1;
        else
            fprintf('\nWow nothing happens, too busy blocking to fight...\n')
        end 
    elseif emove=='A' & urmove=='B'
        if rand()<.95
            fprintf('\nYour opponent shot you down...\n')
            urhealth=urhealth-eshot;
        else
            fprintf('\nYou take a critical shot to the face!\n')
            urhealth=urhealth-(eshot.*1.5);
        end
        eshot_tally=eshot_tally+1;
    elseif emove=='B' & urmove=='A'
        if rand()<.95
            fprintf('\nYou shot your opponent down!\n')
            ehealth=ehealth-urshot;
        else
            fprintf('\nHeadshot!\n')
            ehealth=ehealth-(urshot.*1.5);
        end
        shot_tally=shot_tally+1;
    elseif emove=='A' & urmove=='C'
        if rand()<.90
            fprintf('\nYour shield blocked the shot!\n')
            urhealth=urhealth+urblock;
        else
            fprintf('\nShield blocking malfunction, you get some extra hp!.\n')
            urhealth=urhealth+(urblock.*1.5);
        end
        block_tally=block_tally+1;
    elseif emove=='C' & urmove=='A'
        if rand()<.90
            fprintf('\nYour opponent blocked your shot...\n')
            ehealth=ehealth+eblock;
        else
            fprintf('\nThey blocked the shot critically??\n')
            ehealth=ehealth+(eblock.*1.5);
        end
        eblock_tally=eblock_tally+1;
    elseif emove=='B' & urmove=='C'
        if rand()<.95
            fprintf('\nYour opponent struck through your shield...\n')
            urhealth=urhealth-estrike;
        else
            fprintf('\nYour opponent landed a critical strike!\n')
            urhealth=urhealth-(estrike.*1.5);
        end
        estrike_tally=estrike_tally+1;
    elseif emove=='C' & urmove=='B'
        if rand()<.95
            fprintf('\nYou struck through your opponent''s shield!\n')
            ehealth=ehealth-urstrike;
        else
            fprintf('\nHave a strike lad! You land a critical hit.\n')
            ehealth=ehealth-(urstrike.*1.5);
        end
        strike_tally=strike_tally+1;
    end
    k=getkey;
    
    ehealth=round(ehealth);
    urhealth=round(urhealth);
    
    if ehealth<=0
        result=true;
        health=inithealth;
    elseif urhealth<=0
        result=true;
        death(num)
        combat(ename,einithealth,estrike,eshot,eblock,num)
    end
    
end
       
    
end

function death(num)
fprintf('\n\n')
disp('                           ===========')
disp('                           |  R.I.P. |')
disp('                           ===========')
if num==1
    fprintf('\nGargantua drags you deep into her web, hopefully your next quest makes\n')
    fprintf('it past the first boss.\n')
    k=getkey;
    end_game
elseif num==2
    fprintf('\nSlain by a raider, I really thought you were going to get somewhere\n')
    k=getkey;
    end_game
elseif num==3
    fprintf('\nTaken by the Raider Huntsman, to be fair he was pretty strong.\n')
    k=getkey;
    end_game
elseif num==4
    fprintf('\nYou got killed by the frog?? Seriously?\n')
    k=getkey;
    end_game
elseif num==5
    fprintf('\nFun Fact: Anacondas don''t make good friends, also you''re dead\n')
    k=getkey;
    end_game
elseif num==6
    fprintf('\nIn your dying moments Mortius the Mage turns you into a frog. If you\n')
    fprintf('want to continue the adventure start up Frogger.\n')
    k=getkey;
    end_game
elseif num==7
    fprintf('Sliced and diced by the Zombie Knight, it''s not a pretty sight.\n')
    k=getkey;
    end_game
elseif num==8
    fprintf('You are very dead and so is the Zombie Thrall, wait how does that work?\n')
    k=getkey;
    end_game
elseif num==9
    fprintf('RKO, actually that was expected you were fighting a zombie knight wraith\n')
    fprintf('wielding a sword riding an undead dragon.\n')
    k=getkey;
    Sojourner
elseif num==10
    fprintf('The scorpion drags your remains deep underground, unlucky.\n')
    k=getkey;
    end_game
elseif num==11
    fprintf('And you thought that you liked dinosaurs.\n')
    k=getkey;
    end_game
elseif num==12
    fprintf('You would have made a nice meal if you weren''t more metal than man, either way\n')
    fprintf('you are way dead.\n')
    k=getkey;
    end_game
elseif num==13
    fprintf('That chick in Jurassic World escaped a T-rex in high heels and you died in an\n')
    fprintf('advanced space combat suit??\n')
    k=getkey;
    end_game
elseif num==14
    fprintf('Gunned down at the doorstep, so close but still so far.\n')
    k=getkey;
    end_game
elseif num==15
    fprintf('You were one guy away!!! Noooooo\n')
    k=getkey;
    end_game
elseif num==16
    fprintf('You gave Tony a second chance and he took it\n')
    k=getkey;
    end_game
end
end
%==========================================================================
                                %NPCs
%==========================================================================
% Mostly Enemies that you will battle in the game

% 21 Enemies You can die from 


function you(display)

if display==true
    disp('===================================================================')
    fprintf('A New Journey Begins...\n\n')
    disp('             \____/       __ ')
    disp('             / ___\      / / ')
    disp('            |: =0 =0    / /  ')
    disp('            |:: __ |   / /   ')
    disp('             \_/LLL\  / /    ')
    disp('       __ __./:__:\._/_/_    ')
    disp('      (##i \ |<__>| / i##)   ')
    disp('      |--|:/\/ :: \/\:|--|   ')
    disp('      |  |:  :====:  :|  |   ')
    disp('     .'':.''Y-" |::| "-Y`.:`.')
    disp('     |__| | : |__|.-.| |__|  ')
    disp('     (##) | : /++\`-''! (##) ')
    disp('      \  \|n._\++/_.n| /  /  ')
    disp('       \ xT::::--::::T/  /   ')
    disp('        \Xl-. `""'' .-lXX''  ')
    disp('         /|: \    / :|       ')
    disp('        / |:  i--i  :|       ')
    disp('       / /|:  |  |  :|       ')
    disp('      / / |___|  |__;|       ')
    disp('     /_/  Y&&&Y  Y&&&Y       ')
    disp('          W###W  W###W       ')
    disp('          |   |  |   |       ')
    fprintf('It''ll take some getting used to, but I guess this is who I am now.\n')
    fprintf('Time to find Tony, but first I''ll need a ship, some weapons, and my memory.\n')
    fprintf('Perhaps Ivan could help...\n\n')
end

end


function shield_disp(inp)
if inp==1
    fprintf('\nAdvanced Shield Algorithms\n')
    disp('    ____________________')
    disp('   |  |              |  |')
    disp('   |[]|              |[]|')
    disp('   |  |              |  |')
    disp('   |  |              |  |')
    disp('   |  |              |  |')
    disp('   |  |______________|  |')
    disp('   |            LVL.1   |')
    disp('   |     ____________   |')
    disp('   |    | __      |  |  |')
    disp('   |    ||  |     |  |  |')
    disp('   |    ||__|     |  |  |')
    disp('   |____|_________|__|__|')
elseif inp ==2
    fprintf('\nAdvanced Shield Algorithms\n')
    disp('    ____________________')
    disp('   |  |              |  |')
    disp('   |[]|              |[]|')
    disp('   |  |              |  |')
    disp('   |  |              |  |')
    disp('   |  |              |  |')
    disp('   |  |______________|  |')
    disp('   |            LVL.2   |')
    disp('   |     ____________   |')
    disp('   |    | __      |  |  |')
    disp('   |    ||  |     |  |  |')
    disp('   |    ||__|     |  |  |')
    disp('   |____|_________|__|__|')
elseif inp ==3
    fprintf('\nAdvanced Shield Algorithms\n')
    disp('    ____________________')
    disp('   |  |              |  |')
    disp('   |[]|              |[]|')
    disp('   |  |              |  |')
    disp('   |  |              |  |')
    disp('   |  |              |  |')
    disp('   |  |______________|  |')
    disp('   |            LVL.3   |')
    disp('   |     ____________   |')
    disp('   |    | __      |  |  |')
    disp('   |    ||  |     |  |  |')
    disp('   |    ||__|     |  |  |')
    disp('   |____|_________|__|__|')
end
end
function ship_show(inp)
global ship_name
if inp==1
    fprintf('\n%s\n',ship_name)
    disp('                    .--.-~-.') 
    disp('                   /   \6524\ ')
    disp('            ____   \   /====/ ')
    disp('          .`   /`~-.\ /    / ')
    disp('    _...-''----''____ ~/    / ')
    disp(' .-~ ==        ````--    /_ ')
    disp(' ||== ......              || ')
    disp(' ||    _____________      || ')
    disp(' `~-._`~-._         `~._\  \ ')
    disp('      `~~--`~-._=======`.\__\ ')
    disp('                `~-._____''. ')
    disp('                   ''======` ')
    fprintf('\n')
elseif inp==2
    fprintf('\n%s\n',ship_name)
    disp('                          ..____ ')
    disp('                         / /_   \ ')
    disp('                        /    \__/____  || ')
    disp('                  _____/_.___()278846| || ')
    disp('       __________/_|_|_]       " " " |.|| ')
    disp('    .-''  :,..,:         ::   :[[[[[[:|   > ')
    disp('   (  __              ___________    |''|| ')
    disp('   ''|  /_____________\          \---| || ')
    disp('   --|_/          |    `\. . . . .\--'' || ')
    disp('                         \         \ ')
    disp('                          `\     ___\__  ')
    disp('                            `\  /____  \ ')
    disp('                              `\     \_/ ')
    disp('                                `\____\ ')
    fprintf('\n')
elseif inp==3
    fprintf('\n%s\n',ship_name)
    disp('                     `. ___')
    disp('                    __,'' __`.                _..----....____')
    disp('        __...--.''``;.   ,.   ;``--..__     .''    ,-._    _.-''')
    disp('  _..-''-------''   `''   `''   `''     O ``-''._   (,;'') _,''')
    disp(',''________________                          \`-._`-'',''')
    disp(' `._              ```````````------...___   ''-.._''-: ')
    disp('    ```--.._      ,.                     ````--...__\-.')
    disp('            `.--. `-`                       ____    |  |`')
    disp('              `. `.                       ,''`````.  ;  ;`')
    disp('                `._`.        __________   `.      \''__/`')
    disp('                   `-:._____/______/___/____`.     \  `')
    disp('                               |       `._    `.    \')
    disp('                               `._________`-.   `.   `.___')
    disp('                                                  `------''` ')
    fprintf('\n')
else
end
end

%==========================================================================
                           %Helper Functions
%==========================================================================


function map
global ship_type
imshow('space_map.png')
hold on

[x,y]=ginput(1);

% conditional for choosing which function to run 

if (y>=27 & y<=62) & (x<=286 & x>=248)
    if ship_type>=2
        ice_1
    else
        fprintf('\nYou need a better ship to reach this planet!\n')
        k=getkey;
        map
    end
elseif (y>=132 & y<=182) & (x<=196 & x>=146)
    earth_1
elseif (y>=88 & y<=158) & (x<=414 & x>=344)
    pause(1)
    jung_1
elseif (y>=252 & y<=346) & (x<=442 & x>=352)
    if ship_type==3
        paradise_1
    else
        fprintf('\nYou need a better ship to reach this planet!\n')
        k=getkey;
        map
    end
elseif (y>=246 & y<=308) & (x<=150 & x>=92)
    desert_1
else
    map
end
end

function end_game
fprintf('\nDo you wish to retry, quit, or restart?\n')
fprintf('A: Retry\nB: Quit\nC: Restart\n')
l=false;
while l==false
    n=input('\n','s');
    if n=='A' | n=='a'
        l=true;
    elseif n=='B' | n=='b'
        l=true;
        fprintf('\n\n\n I dont''t know a good function for closing a running matlab script\n')
        fprintf('so just hit ctrl c. Thanks for playing.\n')
        pause(1000)
    elseif n=='C' | n=='c'
        l=true;
        Sojourner
    else
        fprintf('\nInvalid Input, please retry.\n')
    end
end
end

function var_init

% global variables to be used throughout game
global melee1
global shot1
global shield1
global health
global name
global expr
global lvl
global renown
global ship_type
global ship_name
global gun_type
global shield_type
global sword_type

ship_type=0;
name='Tim';
expr= 0;
lvl= 1; 
renown= 0; 
ship_name='UNSINKABLE II';
health=100;
gun_type=0;
shield_type=0;
sword_type=0;
melee1=1;
shot1=1;
shield1=1;

% Earth Stuff
global cemetery_cleared
global forest_cleared
global ivan_first
global ivan_sec
global ivan_3
global ivan_4
global ivan_5

ivan_3=true;
ivan_4=true;
ivan_5=true;
ivan_sec=true;
ivan_first=true;
cemetery_cleared=false;
forest_cleared=false;

% Ice Stuff
global ice_cleared
global ice_boss

ice_cleared=false;
ice_boss=false;

% Jungle Stuff
global mage_ded
global vil_1
global vil_2
global anac

mage_ded=false;
anac=false;
vil_1=false;
vil_2=false;

% Desert stuff
global dino1
global boss_ded

dino1=false;
boss_ded=false;

% paradise
global tony_ded
global tony_result

tony_ded=false;
tony_result=false;
end
