function all = HIST(which,database)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
score=[];

if database(1)==1
    load data_img_orgin.mat;
    img=img_orgin;
elseif database(1)==2
    load data_img_nobk.mat;
    img=img_nobk;
elseif database(1)==3
    load data_img_collection.mat;
    img=img_collection;
else
    load data_img_collection_1082.mat;
    img=img_collection_1082;
end

target=(uint8(img(:,:,:,which)));

for i=1:database(2)
    n=0;
    for RGB=1:3
        [target_n loc]=imhist(target(:,:,RGB),16);
        other=uint8(img(:,:,:,i));
        [n loc]=imhist(other(:,:,RGB),16);
        n=n+abs(n-target_n);
    end
    score=[score n];
    all(1,i)=sum(score(:,i));
end
all=rescale(all);
[v idx]=sort(all);

