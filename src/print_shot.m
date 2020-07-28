function m = print_shot(img, p1, p2)
%prints aline between p1 and p2 on the image given
[m,c] = find_line(p1,p2);
x1 = round(p1(1));
x2 = round(p2(1));
if x1<x2
    Xmax = x2;
    Xmin = x1;
else
    Xmax = x1;
    Xmin = x2;
end
%set all values along the line on the image to be green
for i = Xmin:Xmax
    y = floor(m*i+c);
    img(y,i,1) = 0;
    img(y+1,i,1) = 0;
    img(y,i,2) = 0;
    img(y+1,i,2) = 0;
    img(y,i,3) = 255;
    img(y+1,i,3) = 255;
    if i~=size(img,1)
        img(y,i+1,1) = 0;
        img(y,i+1,2) = 0;
        img(y,i+1,3) = 255;
    end
end
imshow(img)
end