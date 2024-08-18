% Run in base directory 
% Copyright 2016-2024 The MathWorks(TM), Inc.

u=dir('Ex*');
folder_list = {u.name};

file_list = {...
    'README.txt',...
    'startup_workshop.m'};

[~,foldername,~] = fileparts(pwd);

copyfoldername = [foldername '_Copy_FEX'];
mkdir(copyfoldername);

for i= 1:length(folder_list)
    copyfile(folder_list{i},[copyfoldername filesep folder_list{i}]);
end

for i= 1:length(file_list)
    copyfile(file_list{i},[copyfoldername filesep file_list{i}]);
end

cd(copyfoldername)

%% Delete PowerPoint files
pptxFullList = dir('**/*.pptx');
for ppt_i=1:length(pptxFullList)
    delstr = [pptxFullList(ppt_i).folder '\' pptxFullList(ppt_i).name]; 
    disp(delstr);
    delete(delstr)
end

% Delete directories
deleteDirList = {...
    '\Ex_07a\Ex_07a_Soln\Images'};

for dir_i=1:length(deleteDirList)
    delstr = [pwd filesep deleteDirList{dir_i}];
    disp(delstr);
    rmdir(delstr,'s');
end

% Delete files
%{
deleteFileList = {...
    'Optim\youBot_optres_friction.mat'
    'Resources\youBot_data_sheet.pdf'
    };

for i=1:length(deleteFileList)
    delstr = [pwd filesep deleteFileList{i}];
    disp(delstr);
    delete(delstr);
end
%}
