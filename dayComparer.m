function [advanceGrowth] = dayComparer(SubjectID, DayA, DayB)

%%% determines if an isokenetic workout is better than another day. 

gainsGrowth = find(DayB>DayA);
advanceGrowth = SubjectID(gainsGrowth);
end