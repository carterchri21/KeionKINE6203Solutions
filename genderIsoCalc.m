function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)

%%%This function will return 4 inputs. There will be one set for Males, one
%%%for Females. It will return the individual mean of isometric strength
%%%over a 3 day period of lifting depending on the group. The second set of
%%%outputs will return a single  mean of  value to each group. 

accurate = [Gender == 'M']; %%% this function initiates which Gender is which.
M = (find (accurate == 1)); %%% this function initiates the values for Male (M).
F = (find (accurate == 0)); %%% this function initiates the values for Females (F). 


maleIsoIndMeans = (Day1(M)+Day2(M)+Day3(M))/3; %%% divides the average mean of the days of 1,2,3. 
femaleIsoIndMeans = (Day1(F)+Day2(F)+Day3(F))/3; %%% divides the average mean of the days of 1,2,3. 

maleGroupIsoMean = mean(maleIsoIndMeans); %%% the overall average for males in the isokenitic workout.  
femaleGroupIsoMean = mean(femaleIsoIndMeans); %%% the overall average for females in the isokenitic workout. 

end
%%%This will store data in a vector format.


