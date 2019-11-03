% Add contact force library
currdir = pwd;
addpath(genpath(pwd))
[pathstr,~,~] = fileparts(which('startup_Contact_Forces.m'));
cd(pathstr);
startup_Contact_Forces
cd(currdir);

% All units in meters
box_l = 0.3;
box_h = 0.2;
box_w = 0.3;

ramp_l = 3;
ramp_h = 0.1;
ramp_w = 0.5;

rad_contact_circle = 0.005; 