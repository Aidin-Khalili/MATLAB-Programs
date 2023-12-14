img = imread('pout.tif');
y=zeros(1,256);
[n,m]=size(img);
for i=1:n
    for j=1:m
        y(img(i,j)+1)=y(img(i,j)+1)+1;
    end
end
x=1:1:256;
subplot(2,1,1);
y=y./numel(img);
plot(x,y);
title('My histogram');
subplot(2,1,2);
plot(x,imhist(img));
title('Matlab histogram');