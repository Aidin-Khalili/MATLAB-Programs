function [outputPic] = Erosion()
pic=imread('circbw.tif');
[m,n]=size(pic);
outputPic=zeros(m,n);
sizekernel=3;
%sum=zeros(sizekernel,sizekernel);
kernel=ones(sizekernel,sizekernel);
for i=1+floor(sizekernel/2):m-floor(sizekernel/2)
    for j=1+floor(sizekernel/2):n-floor(sizekernel/2)
        on=pic(i-floor(sizekernel/2):i+floor(sizekernel/2), j-floor(sizekernel/2):j+floor(sizekernel/2));
        nh=on(logical(kernel));
        outputPic(i,j)=min(nh(:));
%         sum=kernel.*pic(i-1:i+1,j-1:j+1);
%         if moutputPic(sum(:))==0
%             outputPic(i-1:i+1,j-1:j+1)=zeros(sizekernel,sizekernel);
        
    end
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pic=imread('circbw.tif');
% se=ones(3, 3);
% [P, Q]=size(se);
% outputPic=zeros(size(pic, 1), size(pic, 2));
% for i=ceil(P/2):size(pic, 1)-floor(P/2)
%     for j=ceil(Q/2):size(pic, 2)-floor(Q/2)
%         on=pic(i-floor(P/2):i+floor(P/2), j-floor(Q/2):j+floor(Q/2));
%         nh=on(logical(se));
%         outputPic(i,j)=min(nh(:));
%     end
% end
% end