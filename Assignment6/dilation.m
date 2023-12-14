function [outputPic] = dilation()
pic=imread('circbw.tif');
[m,n]=size(pic);
outputPic=zeros(m,n);
sizekernel=3;
sum=zeros(sizekernel,sizekernel);
kernel=ones(sizekernel,sizekernel);
for i=1+(sizekernel/2):m-(sizekernel/2)
    for j=1+(sizekernel/2):n-(sizekernel/2)
        sum=kernel.*pic(i-1:i+1,j-1:j+1);
        if max(max(sum))== 1
            outputPic(i-1:i+1,j-1:j+1)=ones(sizekernel,sizekernel);
        end
    end
end
end