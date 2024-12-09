function all = LBP(which,database,cellsize,A)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
row=250;
col=150;
page=0;
all=[];

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
target=rgb2gray(target);
if A==1
    target=extractLBPFeatures(target,'Upright',false);
else
    target=extractLBPFeatures(target,'CellSize',[cellsize cellsize],'Upright',false);
end

for i=1:database(2)
    other=uint8(img(:,:,:,i));
    other=rgb2gray(other);
    
    if A==1
        other=extractLBPFeatures(other,'Upright',false);
    else
        other=extractLBPFeatures(other,'CellSize',[cellsize cellsize],'Upright',false);
    end
    
    score=sum(abs(other-target));
    all=[all score];
end    
all=rescale(all);
[v idx]=sort(all);
end

