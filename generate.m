function generate(input)
%GENERATE - Create attack datasets from inputs
%   - Make sure to have run the python script before running this one!

net_path = './gen/aux/vgg_face.mat';

align_vgg_pose(input, '*.*', './gen/aux/temp/csv/');


end

