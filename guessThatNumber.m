function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5 - % % % % % % % % 
%
%        NAME: Christopher Keion Carter
%
%         DUE: November 18
%
% 
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #  
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level && moderate && level ~= advanced     
    %%% Bug #1 has been identified by running the code until an error was shown in the command window.
    %%% Coding was set to an 'or' and shows that it will not properly run without correct output. Changing to
    %%% an "and" fix and the code runs great. From "||" to "&&" changes the 
    %%% modification for better running of the code.
    
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner  
%%% Bug #2  has been identified. Error message shows "Incorrect use of
%%% '=' operator. Assign a value to a variable using '='and compare
%%% values for equality using '=='. With there only being one single
%%% '=' the code cannot be assessed and ran correctly. You have to set
%%% the value level to equal beginner difficulty for values of
%%% equality.

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; 
%%% Bug #3 has been identified by skimming over coding. The h in advancedhighest was NOT capitlized
%%% which could knock off the function completely. Simple but big mistake.
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest,1);   
%%% Bug #4 has been identified while running the code. This function at first was only stated to
%%% choose the largest number for the levels, so changing the function the
%%% way I did was to show and get different numbers. Using function
%%% 'randi'. 

% initialize number of guesses and User_guess

numOfTries = 0; 
%%% Bug #5 has been identified by running the values. Had to change the variable numofTries = 1;
%%% to numofTries = 0;. This is because it is displaying one extra number
%%% higher than it should be at, leaving it inaccurate, because of it being set at 1.  
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest
%%% Bug #6 has been identified while running the code and playing the game. The code was written as userGuess >=
%%% highest. The ">=' alone sets the standard to where it doesnt allow the
%%% user to actually guess the highest value in the coding.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
%%% Bug #7 has been identified while playing the game, stating the guess is too low . The code suggested the '>' which will only
%%% show the highest value. So changing the code to '<' will let us display
%%% a lower value if needed to be more accurate and not stuck to one value.

fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries);
%%% Bug #8 has been identified while inital running of code began. The end of the function forgot to add the
%%% variable numOfTries, which will make it hard to drag and display the
%%% value.

end 
%%% Bug #9 has been identified  by error. There was no 'end' here at the end of the
%%% if condition. Must add 'end' or the loop will never fully run
%%% correctly. 


end  % of guessing while loop


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

%%% Bug #10 has been identified by error message stating a missing END. The end of the guessing while loop was
%%% stuck inside of the loop which could continue displaying every moment a
%%% player actually began guessing a value in the game. So, we move the
%%% fucntion fprintf('Game Over. Thanks for playing the Guess That Number
%%% game.\n\n'); inside of the loop for smooth running of code. 


% end of game