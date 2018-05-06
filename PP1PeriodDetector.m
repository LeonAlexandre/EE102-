%Alexandre Leon - 2017
%This script implements a very naive approach to Period Detection



function m = PP1PeriodDetector(Y)

%brute force: try all the period values (1 to length)
%check all values by using x(t+T)

s = size(Y);
m = s(2);
%select period
for p = 1:s(2)
    
res = [1:s(2) - p];
    for k = 1:(s(2) - p)
%parse at least 1 period in Y and tests all the values 
        if Y(k + p) == Y(k)
            res(k) = 1;
        else
            res(k) = 0;    
        end
    
    end
	
g = ones(1 , (s(2) - p));
    if( p < m)
        if( g == res)
        m = p;
    
        end
    end


end




end