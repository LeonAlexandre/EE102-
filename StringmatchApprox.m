%This function takes looks for patterns in a sequential manner
% and accepts them if they are within the indiciated Hamming Distance

function [out] = StringmatchApprox(P,S,t)
%%%%% inputs 
% S : The string in which we want to find the number of times our pattern P appears
 % P : Pattern that we wish to search for inside S
 %t : number of errors allowed / Hamming Distance

%%%%% output 
% out : the number of times P occurs in S within a hamming distance of t

s = size(S,2);
p = size(P,2);
c = s-p+1;

% extract all strings of size p
M = char(zeros(p,c));

for i = 1:c
   for j = 1:p
      M(j,i) = S(1,i + j -1);
   end
    
  
    
end


% tested

% compare

n = 0;


for l = 1:c
    con = 0;
    for k = 1:p
        if( P(1,k) == M(k,l))
            con = con + 1;
        end
        
    end
    if con >= (p-t)
            n = n+1;
    end
    
end

out = n;
    
end

