clear all
clc

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv')
%%% this function imports the isok_data_6803.csv into MATLAB.

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
%%% this function initiates the function genderIsoCalc.

day1toDay2 = dayComparer(SubjectID, Day1, Day2) %%% uses dayComparer function seeing if there is increase from Day1 to Day 2.
day2toDay3 = dayComparer(SubjectID, Day2, Day3) %%% uses dayComparer function seeing if there is increase from Day2 to Day 3. 

weightAvg = mean(Weight,'omitnan') %% the average mean for weight. 'omitnan' = gets rid of data thats not there.
normDay1mean = mean(Day1) ./ weightAvg %%%% this function averages the means from day 1.
normDay2mean = mean(Day2) ./ weightAvg %%%% this function averages the means from day 2.
normDay3mean = mean(Day3) ./ weightAvg %%%% this function averages the means from day 3.

maleIsoIndMeans(25,1) = 1;  %%% sets maleIsoIndMeans by 25x1 double on the table. 
femaleIsoIndMeans(25,1) = 1; %%% sets femaleIsoIndMeans by 25x1 double on the table. 
maleGroupIsoMean(25,1) = 1; %%% sets maleGroupIsoMean by 25x1 double on the table. 
femaleGroupIsoMean(25,1) = 1; %%% sets femaleGroupIsoMean by 25x1 double  on  the table.
day1toDay2(25,1) = 1; %%% sets  day1toDay2 by 25x1 double on the table. 
day2toDay3(25,1) = 1; %%% sets day2toDay3 by 25x1 double on the table.
normDay1mean(25,1) = 1; %%% sets normDay1mean by 25x1 double on the table. 
normDay2mean(25,1) = 1; %%% sets normDay2mean by 25x1 double on the table. 
normDay3mean(25,1) = 1; %%% sets normDay3mean by 25x1 double on the table. 

finalEvaluation = table(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean);
%%% creates the table that merges all data onto a single table. 

writetable(finalEvaluation,'iso_results.csv');%% indebts the table for final evaluation of data. 