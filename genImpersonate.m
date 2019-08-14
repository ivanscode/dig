function genImpersonate(input)
%GENERATE - Create attack datasets from inputs
%   - Make sure to have run the python script before running this one!

% setup toolbox
run(fullfile('../matcovnet/', 'matlab', 'vl_setupnn.m')) ; % update me

% add necessary paths
addpath ./gen/aux/image-registration/
addpath ./gen/aux/attack/
addpath ./gen/

net_path = './gen/aux/vgg_face.mat';

files = dir(input);

if ~exist('./results/', 'dir')
    mkdir('./results');
end

for i = 3:numel(files)
    num = str2double(files(i).name);
    target = num + 1;
    if num >= 4611
        target = 1;
    end
    fprintf('Generating %d/%d: %d impersonating %d\n', i - 2, numel(files) - 2, num, target);
    digital_impersonation(net_path, input, files(i).name, num, target);
end

end
    
    