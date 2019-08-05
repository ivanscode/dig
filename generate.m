function generate(input, wildcard)
%GENERATE - Create attack datasets from inputs
%   - Make sure to have run the python script before running this one!

% setup toolbox
run(fullfile('../matcovnet/', 'matlab', 'vl_setupnn.m')) ; % update me

% add necessary paths
addpath ./gen/aux/image-registration/
addpath ./gen/aux/attack/

net_path = './gen/aux/vgg_face.mat';

align_vgg_pose(input, wildcard, './gen/aux/temp/csv/');

quit();

end

