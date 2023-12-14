%img=zeros(300,300,3);
%img(:,1:100,1)=1;
%img(:,100:200,2)=1;
%img(:,200:300,3)=1;
%subplot(1,4,1);
%imshow(img);
%title('Orginal image')
%subplot(1,4,2);
%imshow(img(:,:,1));
%title('Red region')
%subplot(1,4,3);
%imshow(img(:,:,2));
%title('Green region')
%subplot(1,4,4);
%imshow(img(:,:,3));
%title('Blue region')
img=imread('E:\Aidin-Computer\Desktop\Sadjad-Uni\Lessons\My-Terms\Term 7\MATLAB-Programming\Codes\Assignment5\images.jpg');
subplot(2,4,1);
imshow(img);
title('Orginal image')
subplot(2,4,2);
imshow(img(:,:,1));
title('Red region')
subplot(2,4,3);
imshow(img(:,:,2));
title('Green region')
subplot(2,4,4);
imshow(img(:,:,3));
title('Blue region')
subplot(2,4,5);
imshow(img);
title('Orginal image')
subplot(2,4,6);
imshow(255-img(:,:,:));
title('Nagative image')
subplot(2,4,7);
imshow(mat2gray(255-img(:,:,:)));
title('Nagative(mat2gray) image')

