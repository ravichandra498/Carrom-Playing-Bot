function [m, c] = find_line(p1, p2);
%defines the parameters of a line using the values of 2 points
%slope by y2-y1/x2-x1
m = (p1(:,2)-p2(:,2))./(p1(:,1)-p2(:,1));

%constant by y1-m*x1
c = p1(:,2)-m.*p1(:,1);
%return the value of the vectors m and c
end