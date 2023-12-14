pic=imread('cameraman.tif');
%imshow(pic);
picBW=imbinarize(pic,0.4);
%imshow(picBW);
picEDGE=edge(pic,'canny',0.2);
%imshow(picEDGE);
subplot(1,4,1);
imshow(pic);
title('original image');
subplot(1,4,2);
imshow(picBW);
title('binary image');
subplot(1,4,3);
imshow(picEDGE);
title('edge(Canny)');
[m,n]=size(pic);
tmp=pic;
for i=1:m
    for j=1:n
        if tmp(i,j)>127
            tmp(i,j)=256;
        else 
            tmp(i,j)=0;
        end
    end
end
subplot(1,4,4);
imshow(tmp);
title('binary (with for)');

