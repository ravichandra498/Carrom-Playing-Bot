function [cordinates possibility] = possible_shot(pot,centers,Smin,Smax,Slevel)

%calculates the cordinates where the lines cross the striking line and
%see whether it can be a feasible shot

p1 = ones(length(centers(:,1)),1)*pot; %point coresponding to the pot
%find parameters of each line
[m c] = find_line(p1, centers);
%calculate the coordinates
X = (Slevel*ones(size(c))-c)./m;
%possible or not
possibility = X>Smin & X<Smax;
cordinates = X;
end