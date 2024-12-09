function all = COR_ONE(target,database,kk)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

if database(1)==1
    load data_img_orgin.mat;
    img=img_orgin;
    small_img=imresize(img,[25 15]);
elseif database(1)==2
    load data_img_nobk.mat;
    img=img_nobk;
    small_img=imresize(img,[25 15]);
elseif database(1)==3
    load data_img_collection.mat;
    img=img_collection;
    small_img=imresize(img,[24 32]);
else
    load data_img_collection_1082.mat;
    img=img_collection_1082;
    small_img=imresize(img,[16 24]);
end

size_pic=size(small_img);
total=zeros(size_pic);
compute=zeros(size_pic);

for pic=1:database(2)
    quantRGB(:,:,:,pic)=imquantize(small_img(:,:,:,pic),0:16:255);
    for i=1:size_pic(1)
        for j=1:size_pic(2)          
            k=kk;
            array=zeros(size_pic(1),size_pic(2));
            col=j-k:j+k;
            row=i-k:i+k;
   
            if row(1)>0
                cols=col;
                cols(cols<=0)=[];cols(cols>size_pic(2))=[];
                array(row(1),cols)=1; 
            end
            if row(end)<=size_pic(1)
                cols=col;
                cols(cols<=0)=[];cols(cols>size_pic(2))=[];
                array(row(end),cols)=1; 
            end
            if col(1)>0
                rows=row;
                rows(rows<=0)=[];rows(rows>size_pic(1))=[];
                array(rows,col(1))=1; 
            end
            if col(end)<=size_pic(2)
                rows=row;
                rows(rows<=0)=[];rows(rows>size_pic(1))=[];
                array(rows,col(end))=1;
            end

            all=sum(sum(array(:,:)));                               % all of RGB
            compute=(quantRGB(:,:,:,pic).*array);                     % square array
             
            for RGB=1:3
                num=numel(find(compute(:,:,RGB)==quantRGB(i,j,RGB,pic)));
                if isnan(num/all)==1
                    total(i,j,RGB,pic)=0;
                else
                    total(i,j,RGB,pic)=num/all;
                end
                num=0;
            end
        end
    end
end

score=[];all=[];colorbar_target=[];
saves=total(:,:,:,target);

for RGB=1:3
    color_target(:,:,RGB)=reshape(quantRGB(:,:,RGB,target),[size_pic(1)*size_pic(2) 1]);
    targets(:,:,RGB)=reshape(saves(:,:,RGB),[size_pic(1)*size_pic(2) 1]);
    for color=1:17
        allcolor=[];
        ind_target=find(color_target(:,:,RGB)==color);
        for i=1:length(ind_target)
            allcolor=[allcolor targets(ind_target(i))];
        end
        if isempty(allcolor)==1
            colorbar_target(color,1,RGB)=0;
        else
            colorbar_target(color,1,RGB)=sum(allcolor)/length(allcolor);
        end
    end
end

for pic=1:database(2)
    saves=total(:,:,:,pic);
    for RGB=1:3
        color_total(:,:,RGB)=reshape(quantRGB(:,:,RGB,pic),[size_pic(1)*size_pic(2) 1]);
        totals(:,:,RGB)=reshape(saves(:,:,RGB),[size_pic(1)*size_pic(2) 1]);
    for color=1:17
        allcolor=[];
        ind=find(color_total(:,:,RGB)==color);
        for i=1:length(ind)
            allcolor=[allcolor totals(ind(i))];
        end
        if isempty(allcolor)==1
            colorbar(color,1,RGB)=0;
        else
            colorbar(color,pic,RGB)=sum(allcolor)/length(allcolor);
        end
    end
    end
    N=abs(colorbar(:,pic,:)-colorbar_target(:,1,:));            % Numerator
    D=1+colorbar(:,pic,:)+colorbar_target(:,1,:);               % Denominator
    score=sum(sum(N./D));
    all=[all score];
end    
all=rescale(all);
[v idx]=sort(all);
end

