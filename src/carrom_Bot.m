clear all;
clc;
%PART1
%we load the image convert to gray and find centres and radii of black and
%white coins we show the image and then plot the circles

img = imread('carromboard.jpg');
gray = rgb2gray(img);
Rmin = 8;
Rmax = 12;
[centers_b, radii_b] = imfindcircles(gray, [Rmin Rmax], 'ObjectPolarity', 'dark', 'Sensitivity', 0.92);
[centers_w, radii_w] = imfindcircles(gray, [Rmin Rmax], 'ObjectPolarity', 'bright', 'Sensitivity', 0.92);
imshow(img);
hold
viscircles(centers_b, radii_b, 'color', 'b');
viscircles(centers_w, radii_w, 'color', 'r');
'all the circles have been visualized.'
pause;

%defining pots

pot1 = [1 1];
pot2 = [457 1];
pot3 = [457 457];
pot4 = [1 457];

%defining the striker line

S_Xmax = 367;       %Striker X cordinate max
S_Xmin = 89;        %Striker X cordinate min
S_level = 386;      %Striker line's Y cordinate

%calculating the cordinates for the striker position and judging the
%possibility that whether it will be a feasible shot or not
centers1 = [];
cord1 = [];
centers2 = [];
cord2 = [];
%possibility of hitting a black coin in pot1
[cordinates_b1, possibility_b1] = possible_shot(pot1, centers_b, S_Xmin, S_Xmax, (S_level-10));
idx1 = find(possibility_b1);
for i = 1:length(idx1)
    centers1 = [centers1; centers_b(idx1(i),:)];
    cord1 = [cord1; cordinates_b1(idx1(i))];
end
a = i+1;
%possibility of hitting a white coin in pot1
[cordinates_w1, possibility_w1] = possible_shot(pot1, centers_w, S_Xmin, S_Xmax, (S_level-10));
idx1 = [idx1; find(possibility_w1)];
for i = a:length(idx1)
    centers1 = [centers1; centers_w(idx1(i),:)];
    cord1 = [cord1; cordinates_w1(idx1(i))];
end
%possibility of hitting a black coin in pot2
[cordinates_b2, possibility_b2] = possible_shot(pot2, centers_b, S_Xmin, S_Xmax, (S_level-10));
idx2 = find(possibility_b2);
for i = 1:length(idx2)
    centers2 = [centers2; centers_b(idx2(i),:)];
    cord2 = [cord2; cordinates_b2(idx2(i))];
end
a = i+1;
%possibility of hitting a white coin in pot2
[cordinates_w2, possibility_w2] = possible_shot(pot2, centers_w, S_Xmin, S_Xmax, (S_level-10));
idx2 = [idx2; find(possibility_w2)];
for i = a:length(idx2)
    centers2 = [centers2; centers_w(idx2(i),:)];
    cord2 = [cord2; cordinates_w2(idx2(i))];
end

'all the possible shots have been calculated. press "enter" to print the best shot.'
pause;
%all the centers for pot 1 in centers1 and indexes in idx1
%all the centers for pot 2 in centers2 and indexes in idx2

%now finding the distance and calc the minimum one
p1 = ones(length(idx1),1)*pot1;
cord1 = [cord1 (S_level*ones(length(idx1),1))];
dist1 = pt_distance(p1,cord1);
p2 = ones(length(idx2),1)*pot2;
cord2 = [cord2 (S_level*ones(length(idx2),1))];
dist2 = pt_distance(p2,cord2);

[M1,I1] = min(dist1);
[M2,I2] = min(dist2);
%minimum from pot1 and pot2
if M1<M2
    p= round(cord1(I1,:));
    m = print_shot(img,pot1,p);
else
    p = round(cord2(I2,:));
    m = print_shot(img,pot2,p);
end
'coordinates of the striker postion'
p
'angle from the strikers position taken as anticlock wise from +ve X axis'
180-atand(m)