function generate(input, output)
%GENERATE - Create attack datasets from inputs
%   -

net_path = './gen/aux/vgg_face.mat';
files = dir(input);
len = size(files);

%Preprocess files
parfor i = 1:len(1)
    %call to preprocess_data
end

%Process files
parfor i = 1:len(1)
    %call to digital_dodging
end


end

