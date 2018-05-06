%Alexandre Leon - 2017
% This function implements a basic approach to string matching
%In particular, finds the number of occurences of a pattern P in a string S

function [out] = Stringmatch(P,S)
%%%%% inputs 
% S : The string in which we want to find the number of times our pattern P appears
 % P : Pattern that we wish to search for inside S

%%%%% output 
% out : the number of times P occurs in S

s = size(S);
t = size(P);
l = 0; %mycoutner

%Parse the S and look for 1st letter of P
% when found, create new counter and compare.
c = P(1);
for i=1:s(2)-t(2)
    if S(i) == c
       V = S(i: (i-1+t(2)));
       if V == P
           l = l+1;
       end
    end
end
out = l;
end
