picOriginal=imread('circbw.tif');
[m,n]=size(picOriginal);
sizekernel=3;
se=ones(sizekernel,sizekernel);
MypicErsion=Erosion();
MypicDilation=dilation();
picErsion=imerode(picOriginal,se);
picDilation=imdilate(picOriginal,se);

subplot(2,3,1);
imshow(picOriginal);
title('Orginal image')

subplot(2,3,2);
imshow(MypicDilation);
title('My Dilation image')

subplot(2,3,3);
imshow(MypicErsion);
title('My Ersion image')

subplot(2,3,5);
imshow(picDilation);
title('Matlab Dilation image')

subplot(2,3,6);
imshow(picErsion);
title('Matlab Ersion image')

