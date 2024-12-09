function varargout = s1070557(varargin)
% S1070557 MATLAB code for s1070557.fig
%      S1070557, by itself, creates a new S1070557 or raises the existing
%      singleton*.
%
%      H = S1070557 returns the handle to a new S1070557 or the handle to
%      the existing singleton*.
%
%      S1070557('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in S1070557.M with the given input arguments.
%
%      S1070557('Property','Value',...) creates a new S1070557 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before s1070557_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to s1070557_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help s1070557

% Last Modified by GUIDE v2.5 18-Jun-2021 16:20:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @s1070557_OpeningFcn, ...
                   'gui_OutputFcn',  @s1070557_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before s1070557 is made visible.
function s1070557_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to s1070557 (see VARARGIN)

% Choose default command line output for s1070557
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes s1070557 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = s1070557_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in pushbutton2.
global idx;
idx=[1:365];
global handles_pic handles_tex
handles_pic=[handles.axes1, handles.axes2, handles.axes3, handles.axes4, handles.axes5, handles.axes6, handles.axes7, handles.axes8, handles.axes9, handles.axes10];
handles_tex=[handles.text3, handles.text4, handles.text5, handles.text6, handles.text7, handles.text8, handles.text9, handles.text10, handles.text11, handles.text12];
row=250;
col=150;
img_orgin=zeros(row,col,3,324);
index=[1:10];

% fileFolder_peen=fullfile('E:\大學\3下\多媒體\0611_加上vgg16\peen_ok\peen_detect');            % get all fles in the peen folder
% fileFolder_person=fullfile('E:\大學\3下\多媒體\0611_加上vgg16\person_ok\persons_detect');     % get all fles in the person folder
% dirOutput_peen=dir(fullfile(fileFolder_peen,'*'));                                  % save names in an array
% dirOutput_person=dir(fullfile(fileFolder_person,'*'));
% dirArray_peen=struct2cell(dirOutput_peen);
% dirArray_person=struct2cell(dirOutput_person);
% 
% for i=1:length(dirArray_peen)-2
%     img_orgin(:,:,:,i)=imresize(imread(string(strcat(dirArray_peen(2,1),'\',dirArray_peen(1,i+2)))),[row col]);
%     img_nobk(:,:,:,i)=imresize(imread(string(strcat('E:\大學\3下\多媒體\0611_加上vgg16\peen_ok\peen_detect_nobk\',dirArray_peen(1,i+2)))),[row col]);
%     img_mask(:,:,:,i)=imresize(imread(string(strcat('E:\大學\3下\多媒體\0611_加上vgg16\peen_ok\peen_mask\',dirArray_peen(1,i+2)))),[row col]);
% end
% 
% for i=1:length(dirArray_person)-2
%     img_orgin(:,:,:,length(dirArray_peen)-2+i)=imresize(imread(string(strcat(dirArray_person(2,1),'\',dirArray_person(1,i+2)))),[row col]);
%     img_nobk(:,:,:,length(dirArray_peen)-2+i)=imresize(imread(string(strcat('E:\大學\3下\多媒體\0611_加上vgg16\person_ok\persons_detect_nobk\',dirArray_person(1,i+2)))),[row col]);
%     img_mask(:,:,:,length(dirArray_peen)-2+i)=imresize(imread(string(strcat('E:\大學\3下\多媒體\0611_加上vgg16\person_ok\persons_mask\',dirArray_person(1,i+2)))),[row col]);
% end
% save data_img_orgin.mat img_orgin;
% save data_img_nobk.mat img_nobk;
% save data_img_mask.mat img_mask;
% 
% row=240;
% col=320;
% img_collection=zeros(row,col,3,365);
% for i=1:365
%     img_collection(:,:,:,i)=imresize(imread(['E:\大學\3下\多媒體\0611_加上vgg16\collection_for_1052\1 (' num2str(i) ').jpg']),[row col]);
% end
% save data_img_collection.mat img_collection;

% load data_img_collection.mat;
% load data_img_orgin.mat;
% load data_img_nobk.mat;
% load data_img_mask.mat;

% row=80;
% col=120;
% img_collection_1082=zeros(row,col,3,440);
% % for i=1:440
% %     img_collection_1082(:,:,:,i)=imresize(imread(['E:\大學\3下\多媒體\0618_期末\collection_for_1082\1 (' num2str(i) ').jpg']),[row col]);
% % end
% save data_img_collection_1082.mat img_collection_1082;

collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');
if collection_img_1052==1
    load data_img_collection.mat;
    img=img_collection;
    idx=[1:365];
elseif collection_img_1082==1
    load data_img_collection_1082.mat;
    img=img_collection_1082;
    idx=[1:440];
else
    load data_img_orgin.mat;
    img=img_orgin;
    idx=[1:324];
end
save data_img.mat img;

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end

page=0;
save data_page.mat page;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
%msgbox('Done');


function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_img.mat;
rgb=get(handles.radiobutton5,'Value');
lbp=get(handles.radiobutton11,'Value');
cor_more=get(handles.radiobutton7,'Value');
cor_one=get(handles.radiobutton8,'Value');
hist=get(handles.radiobutton9,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');
orgin_img=get(handles.radiobutton12,'Value');
none=get(handles.radiobutton14,'Value');
which=get(handles.edit2,'String');which=str2double(which);
all_rgb=zeros(1,324);all_lbp=zeros(1,324);
all_cor=zeros(1,324);all_hist=zeros(1,324);
w1=get(handles.edit20,'String');w1=str2double(w1);
w2=get(handles.edit21,'String');w2=str2double(w2);
w3=get(handles.edit22,'String');w3=str2double(w3);
w4=get(handles.edit23,'String');w4=str2double(w4);

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

if rgb==1
    new_row=get(handles.edit13,'String');new_row=str2double(new_row);
    new_col=get(handles.edit14,'String');new_col=str2double(new_col);
    all_rgb=RGB(which,database,new_row,new_col);
end

if lbp==1
    A=get(handles.radiobutton3,'Value');
    B=get(handles.radiobutton4,'Value');
    cellsize=get(handles.edit15,'String');cellsize=str2double(cellsize);
    all_lbp=LBP(which,database,cellsize,A);
end
if hist==1
    all_hist=HIST(which,database);
end
if none==0
    if cor_more==1
        start=get(handles.edit16,'String');start=str2double(start);
        interval=get(handles.edit17,'String');interval=str2double(interval);
        endd=get(handles.edit18,'String');endd=str2double(endd);
        all_cor=COR_MORE(which,database,start,interval,endd);
    else
        kk=get(handles.edit19,'String');kk=str2double(kk);
        all_cor=COR_ONE(target,database,kk);
    end
end

all=(w1*all_rgb)+(w3*all_lbp)+(w4*all_cor)+(w2*all_hist);
[v idx]=sort(all);

page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;

for i=1:10
    index(i)=idx(page*10+i);
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
page=0;
load data_page.mat;
load data_new_img.mat;

getlast=max(idx);
last_page=fix((getlast-1)/10);
last_pictures=mod(getlast,10);
if last_pictures==0
    last_pictures=10;
end

if max(idx)==365
    load data_img_collection.mat;
    img=img_collection;
    row=240;col=320;
elseif max(idx)==440   
    load data_img_collection_1082.mat;
    img=img_collection_1082;
    row=80;col=120;
else
    load data_img_orgin.mat;
    img=img_orgin;
    row=250;col=150;
end

if(page==0)
    page=last_page;
    for i=1:last_pictures
        index(i)=idx(page*10+i);
    end
else
    page=page-1;
    for i=1:10
        index(i)=idx(page*10+i);
    end
end

r1=get(handles.radiobutton1,'Value');
r2=get(handles.radiobutton2,'Value');
if r2==1
    img=new_img;
end

for i=1:last_pictures
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end

if(page~=last_page&&last_pictures~=10)
    for i=last_pictures+1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
    end
elseif(last_pictures~=10)
    for i=last_pictures+1:10
    axes(handles_pic(i));
    imshow(zeros(row,col));
    set(handles_tex(i),'String','None');
    end
end

set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;
%msgbox('Done');


function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
page=0;
load data_page.mat;
load data_img.mat;
load data_new_img.mat;

getlast=max(idx);
last_page=fix((getlast-1)/10);
last_pictures=mod(getlast,10);
if last_pictures==0
    last_pictures=10;
end

if max(idx)==365
    load data_img_collection.mat;
    img=img_collection;
    row=240;col=320;
elseif max(idx)==440
    load data_img_collection_1082.mat;
    img=img_collection_1082;
    row=80;col=120;
else
    load data_img_orgin.mat;
    img=img_orgin;
    row=250;col=150;
end

page=page+1;

if(page==last_page)
    for i=1:last_pictures
        index(i)=idx(page*10+i);
    end
else
    if(page==last_page+1)
        page=0;
    end
    for i=1:10
        index(i)=idx(page*10+i);
    end
end

r1=get(handles.radiobutton1,'Value');
r2=get(handles.radiobutton2,'Value');
if r2==1
    img=new_img;
end

for i=1:last_pictures
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end
if(page~=last_page&&last_pictures~=10)
    for i=last_pictures+1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
    end
elseif last_pictures~=10
    for i=last_pictures+1:10
    axes(handles_pic(i));
    imshow(zeros(row,col));
    set(handles_tex(i),'String','None');
    end
end

set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;
%msgbox('Done');



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
row=250;
col=150;
page=0;
all=[];                % 8pieces
which=get(handles.edit2,'String');which=str2double(which);
new_row=get(handles.edit13,'String');new_row=str2double(new_row);
new_col=get(handles.edit14,'String');new_col=str2double(new_col);
orgin_img=get(handles.radiobutton12,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

all=RGB(which,database,new_row,new_col);

[v idx]=sort(all);

page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);

for i=1:10
    index(i)=idx(page*10+i);
end
save data_page.mat page;

r1=get(handles.radiobutton1,'Value');
r2=get(handles.radiobutton2,'Value');
if r2==1
    img=new_img;
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end




function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_page.mat;
load data_img.mat;
load data_new_img.mat
row=250;
col=150;
r1=get(handles.radiobutton1,'Value');
r2=get(handles.radiobutton2,'Value');

if r2==1
    img=new_img;
else
    if max(idx)==365
        load data_img_collection.mat;
        img=img_collection;
    elseif max(idx)==440
        load data_img_collection_1082.mat;
        img=img_collection_1082;
    else
        load data_img_orgin.mat;
        img=img_orgin;
    end
end

getlast=max(idx);
last_page=fix((getlast-1)/10);
last_pictures=mod(getlast,10);
if last_pictures==0
    last_pictures=10;
end

if(page==last_page)
    for i=1:last_pictures
        index(i)=idx(page*10+i);
    end
else
    if(page==last_page+1)
        page=0;
    end
    for i=1:10
        index(i)=idx(page*10+i);
    end
end

for i=1:last_pictures
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end
if(page~=last_page&&last_pictures~=10)
    for i=last_pictures+1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
    end
elseif last_pictures~=10
    page=0;
    for i=last_pictures+1:10
    axes(handles_pic(i));
    imshow(zeros(row,col));
    set(handles_tex(i),'String','None');
    end
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_page.mat;
load data_img.mat;

A=get(handles.radiobutton3,'Value');
B=get(handles.radiobutton4,'Value');
cellsize=get(handles.edit15,'String');cellsize=str2double(cellsize);
which=get(handles.edit2,'String');which=str2double(which);
orgin_img=get(handles.radiobutton12,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

all=LBP(which,database,cellsize,A);

[v idx]=sort(all);

page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;

for i=1:10
    index(i)=idx(page*10+i);
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end

function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_page.mat;

start=get(handles.edit16,'String');start=str2double(start);
interval=get(handles.edit17,'String');interval=str2double(interval);
endd=get(handles.edit18,'String');endd=str2double(endd);
target=get(handles.edit2,'String');target=str2double(target);
orgin_img=get(handles.radiobutton12,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

all=COR_MORE(target,database,start,interval,endd);

[v idx]=sort(all);

page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;

for i=1:10
    index(i)=idx(page*10+i);
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end


function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_page.mat;

kk=get(handles.edit19,'String');kk=str2double(kk);
target=get(handles.edit2,'String');target=str2double(target);
orgin_img=get(handles.radiobutton12,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

all=COR_ONE(target,database,kk);

[v idx]=sort(all);

page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;

for i=1:10
    index(i)=idx(page*10+i);
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end


function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on edit18 and none of its controls.
function edit18_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_page.mat;
load data_img.mat;
target=get(handles.edit2,'String');target=str2double(target);
orgin_img=get(handles.radiobutton12,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

all = HIST(target,database);

[v idx]=sort(all);
page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;

for i=1:10
    index(i)=idx(page*10+i);
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton11



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton12


% --- Executes on button press in radiobutton13.
function radiobutton13_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton13


% --- Executes on button press in radiobutton14.
function radiobutton14_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton14


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_page.mat;
which=get(handles.edit2,'String');which=str2double(which);
orgin_img=get(handles.radiobutton12,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

all = Feature_VGG16(which,database);
[v idx]=sort(all);

page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;

for i=1:10
    index(i)=idx(page*10+i);
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global idx;
global handles_pic handles_tex
load data_page.mat;
which=get(handles.edit2,'String');which=str2double(which);
orgin_img=get(handles.radiobutton12,'Value');
collection_img_1052=get(handles.radiobutton15,'Value');
collection_img_1082=get(handles.radiobutton16,'Value');

if collection_img_1052==1
    database=[3 365];                   % which collection and the amount of pictures
    load data_img_collection.mat;
    img=img_collection;
elseif collection_img_1082==1
    database=[4 440];                   % which collection and the amount of pictures
    load data_img_collection_1082.mat;
    img=img_collection_1082;
elseif orgin_img==1
    database=[1 324];
    load data_img_orgin.mat;
    img=img_orgin;
else
    database=[2 324];
    load data_img_orgin.mat;
    img=img_orgin;
end

all=Feature_ResNet16(which,database);
[v idx]=sort(all);

page=0;
getlast=max(idx);
last_page=fix((getlast-1)/10);
set(handles.edit1,'String',['page ' num2str(page) 'of ' num2str(last_page) ' ']);
save data_page.mat page;

for i=1:10
    index(i)=idx(page*10+i);
end

for i=1:10
    axes(handles_pic(i));
    imshow(uint8(img(:,:,:,index(i))));
    set(handles_tex(i),'String',[num2str(index(i))]);
end
