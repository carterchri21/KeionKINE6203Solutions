%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 2: Tic Tac Toe 
%
% Submitted by: Christopher Carter
%
% Due: October 7th, 2021
%
% Instructions: 
% We will be playing a simple game of good ol' Tic Tac Toe. My gameboard is
% a matrix containing the numbers 1-9. You will simply be '0' as a player,
% as the Computer will be '10' upon placement of it's move. To move, you
% will be asked "Where do you want to place your "0"; followed by "Pick a
% number between 1-9". Once you see the details of the board with the range
% of numbers at display, you will notice your choice is chosen once the
% spot of decision has been made. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear all

disp('Welcome to your worst nightmare!')

playAgain = 0;
while playAgain ~=1
    doyouWantToPlay = input('Type Y to play or N to leave: ', 's');
    
    if doyouWantToPlay == 'Y' % if loop for do you want to play
        % while playAgain == true
        gameboard = [1 2 3; 4 5 6; 7 8 9]; 
        disp(gameboard)
        disp('This is a regular game of Tic Tac Toe.')
        disp('Pick a number to place your variable within the spot')
        disp('Tic Tac Toe three in a row') 

        for turn = 1:5
            %%%player code%%%
       
            %verify if space is available
            availMove = [1 2 3 4 5 6 7 8 9];
            spaceLeft = 0;
            checkPlayerWhile = 0;
            while checkPlayerWhile~=1
           
                disp('Where do you want to place your 0?');
                playermove = str2num(input('Pick between 1-9: ', 's'));
                checkPlayer = ismember(playermove, availMove);
                if checkPlayer == 1
                    spaceLeft = spaceLeft + 1;
                    checkPlayerWhile = 1;
                else
                    disp('Move not available, pick another');
                end
            end
            availMove = setdiff(availMove,playermove);
     
       
            if playermove == 1 && gameboard(1,1) ~= 10 % ckecking where player plays and display updated board
                gameboard(1,1) = 0
            elseif playermove == 2 && gameboard(1,2) ~= 10
                gameboard(1,2) = 0
            elseif playermove == 3 && gameboard(1,3) ~= 10
                gameboard(1,3) = 0
            elseif playermove == 4 && gameboard(2,1) ~= 10
                gameboard(2,1) = 0
            elseif playermove == 5 && gameboard(2,2) ~= 10
                gameboard(2,2) = 0
            elseif playermove == 6 && gameboard(2,3) ~= 10
                gameboard(2,3) = 0
            elseif playermove == 7 && gameboard(3,1) ~= 10
                gameboard(3,1) = 0
            elseif playermove == 8 && gameboard(3,2) ~= 10
                gameboard(3,2) = 0
            elseif playermove == 9 && gameboard(3,3) ~= 10
                gameboard(3,3) = 0
       else %if the playermove is not on the board meaning diff from numbers 1-9
           %askAgain
           disp('ask again')
       end % of player move
       
       
       %%%computer code%%%
       
       
       checkCompWhile = 0;
       while checkCompWhile~=1
           computermove = randi([1 9]);
           checkComp = ismember(computermove, availMove);
           if checkComp == 1
               spaceLeft = spaceLeft +1; 
               checkCompWhile = 1;
           else
               disp('computer plays');
           end
       end
       availMove = setdiff(availMove,playermove);
               
               
       
       %if same as player but with X
       if computermove == 1 && gameboard(1,1) ~= 0  % checking where comp plays and display updated board
           gameboard(1,1) = 10
       elseif computermove == 2 && gameboard(1,2) ~= 0
           gameboard(1,2) = 10
       elseif computermove == 3 && gameboard(1,3) ~= 0
           gameboard(1,3) = 10
       elseif computermove == 4 && gameboard(2,1) ~= 0
           gameboard(2,1) = 10
       elseif computermove == 5 && gameboard(2,2) ~= 0
           gameboard(2,2) = 10
       elseif computermove == 6 && gameboard(2,3) ~= 0
           gameboard(2,3) = 10
       elseif computermove == 7 && gameboard(3,1) ~= 0
           gameboard(3,1) = 10
       elseif computermove == 8 && gameboard(3,2) ~= 0
           gameboard(3,2) = 10
       elseif computermove == 9 && gameboard(3,3) ~= 0
           gameboard(3,3) = 10
       end       % end of computer moves
       
       %winning condition
       if gameboard(1,1) == gameboard(1,2) && gameboard(1,2) == gameboard(1,3) %1st row
           if gameboard(1,3) == 0 
               disp('Wow.. you Won.. lucky.')
               break
           else
               disp('The Computer has Won')
               break
           end
           
       elseif gameboard(2,1) == gameboard(2,2) && gameboard(2,2) == gameboard(2,3)
           if gameboard(2,1) == 0 
               disp('Wow.. you Won.. lucky.') 
               break
           else
               disp('The Computer has Won')
               break
           end %2nd row
       elseif gameboard(3,1) == gameboard(3,2) && gameboard(3,2) == gameboard(3,3)
           if gameboard(3,2) == 0 
               disp('Wow.. you Won.. lucky.')
               break 
           else
               disp('The Computer has Won')
               break
           end
       elseif gameboard(1,1) == gameboard(2,1) && gameboard(2,1) == gameboard(3,1)
           if gameboard(1,1) == 0 
               disp('Wow.. you Won.. lucky.')
               break
           else
               disp('The Computer has Won')
               break
           end
       elseif gameboard(1,2) == gameboard(2,2) && gameboard(2,2) == gameboard(3,2)
           if gameboard(2,2) == 0
               disp('Wow.. you Won.. lucky.')
               break
           else
               disp('The Computer has Won')
               break
           end
       elseif gameboard(1,3) == gameboard(2,3) && gameboard(2,3) == gameboard(3,3)
           if gameboard(3,3) == 0 
               disp('Wow.. you Won.. lucky.')
               break
           else
               disp('The Computer has Won')
               break
           end
       elseif gameboard(1,1) == gameboard(2,2) && gameboard(2,2) == gameboard(3,3)
           if gameboard(2,2) == 0
               disp('Wow.. you Won.. lucky.')
               break
           else
               disp('The Computer has Won')
               break
           end
       elseif gameboard(3,1) == gameboard(2,2) && gameboard(2,2) == gameboard(1,3)
           if gameboard(1,3) == 0 
               disp('Wow.. you Won.. lucky.')
               break
           else
               disp('The Computer has Won')
               break 
           end
           
       elseif spaceLeft == 9 && turn == 5 % spaceLeft = 9 means board is full, spaceLeft = 0 means baord is empty
           disp('Well look at that.. TIE!') % for a tie
           break
       else
           disp('The Game Continues')
       end
       end

else % else of if loop do you want to play
    disp('See ya loser') 
    break
   
    end %  end of if loop do you want to play
    AskPlayAgain = input('Want to run it back?','s');
    if AskPlayAgain == 'Y'
        playAgain = 0; 
    else
        playAgain = 1;
    disp('See ya loser');
    end
end
