%Alexandre Leon
%Computes Cross-Correlation
function [C] = PP5xcorr(x,y)

% x,y: input vectors containing signal values for the two input signals
% C: output vector containing the circular cross-correlation of the two
% vectors x,y

%compare sizes and pads
sX = size(x,2);
sY = size(y,2);
if(sX > sY) 
   y =  compAndCat( sX , sY, y)   
end
if(sY > sX) 
   x =  compAndCat( sY , sX, x)   
end 
sX = size(x,2);

% Now for Cross correlation
C = x - x;
for j = 1:sX
    for i = 1:sX
        C(1,j) = C(1,j) + sumTerm(x , y, sX , i , j);
    end 
    
    
end

    
end

function  u = sumTerm(x, y, sX , m, n)
dex = mod(m + n - 2,sX)+1;
u = ( x(m) * y(dex) ); 

end


function M = compAndCat( sL, sS, sig  )
M = cat(2, sig, zeros(1,sL - sS)  );

end