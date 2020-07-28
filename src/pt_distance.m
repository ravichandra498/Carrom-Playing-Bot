function dist = pt_distance(p1, p2)
%calculates the distance between two points
dx = p1(:,1)-p2(:,1);
dy = p1(:,2)-p2(:,2);
dist = sqrt(dx.^2+dy.^2);
end