function all = ACT(which)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
load data_img.mat;
load data_img_nobk.mat;
load data_img_mask.mat;
row=250;col=150;
all=[];

target=img_mask(:,:,1,which);
target=reshape(target,[row*col 1]);
target(target>0)=1;

for i=1:324
    other=img_mask(:,:,1,i);
    other=reshape(other,[row*col 1]);
    other(other>0)=1;
    score=sum(abs(other-target));
    all=[all score];
end
all=rescale(all);
[v idx]=sort(all);
end

