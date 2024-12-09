function all = RGB(which,database,new_row,new_col)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
row=250;
col=150;
page=0;
all=[];                % 8pieces

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
    
new_img=imresize(img,[new_row,new_col]);
save data_new_img.mat new_img;

target=(uint8(new_img(:,:,:,which)));
target=rgb2hsv(target);
target=reshape(target,[(new_row*new_col*3) 1]);

all=[];
for i=1:database(2)
    other=uint8(new_img(:,:,:,i));
    other=rgb2hsv(other);
    other=reshape(other,[(new_row*new_col*3) 1]);
    score=sum(abs(other-target));
    all=[all score];
end
all=rescale(all);
[v idx]=sort(all);
end

