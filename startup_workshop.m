function startup_workshop
% Copyright 2014-2017 The MathWorks, Inc.

% Setup path
addpath(genpath(pwd));

% If exercise 2d is present, run startup file
[pathstr,~,~] = fileparts(which('startup_Contact_Forces.m'));
if ~isempty(pathstr)
    currdir = pwd;
    cd(pathstr);
    startup_Contact_Forces
    cd(currdir);
end


% Check if correct products are installed
productinfo = ver;
productname = {productinfo.Name};
ReqProductList = {'MATLAB','Simulink','Simscape','Simscape Driveline','Simscape Electronics','Simscape Fluids','Simscape Multibody','Simscape Power Systems','Simulink Design Optimization','Stateflow','Optimization Toolbox'};

for i = 1:length(ReqProductList)
    haveprod(i) = sum(strcmp(char(ReqProductList(i)),productname)');
end

if (sum(haveprod) == length(ReqProductList))
    disp('All products required for workshop have been installed.');
else
    disp('Installation missing some products required for workshop.');
    disp('Check the table of contents to see the products required by each exercise.');
    for i = 1:length(haveprod)
        if (haveprod(i)==0)
            disp(['Missing ' char(ReqProductList{i})]);
        end
    end
end


