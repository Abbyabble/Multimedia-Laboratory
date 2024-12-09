function all = Feature_ResNet16(which,database)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
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

net=resnet18;
net.Layers;
sz=net.Layers(1).InputSize;
img_resized=imresize(img,[sz(1) sz(2)]);
layer='fc1000';
all=[];

f_target=activations(net,img_resized(:,:,:,which),layer,'OutputAs','rows'); 

for i=1:database(2)
   f=activations(net,img_resized(:,:,:,i),layer,'OutputAs','rows'); 
   score=sum(abs(f-f_target));
   all=[all score];
end
end

