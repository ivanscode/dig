function align_vgg_pose(path, wildcard, landmarks_path)
% Align images to vgg pose
% Input:
%   path: folder where images are
%   wildcard: wildcard to find images to align (e.g., *.png)
%   target_landmarks_file: optional path to target's landmarks

    % fixed variables
    prefix = 'Fast_Marks_';
    suffix = '.csv';
    out_prefix = 'aligned_vgg_';
    crop_size = [1 1 224 224];
    
    target_landmarks = csvread('./gen/aux/image-registration/ref_marks.csv');
    if ~exist('./gen/aux/temp/cropped', 'dir')
       mkdir('./gen/aux/temp/cropped');
    end

    % align images
    imfiles = [dir(strcat(path, '*.jpg')); dir(strcat(path, '*.png'))];
    for i_m = 1:numel(imfiles)
        im_fname = imfiles(i_m).name;
        landmarks_fname = strcat(prefix, im_fname, suffix);
        im = imread(fullfile(path, im_fname));
        landmarks = csvread(fullfile(landmarks_path, landmarks_fname));
        im = align_face(im, landmarks, target_landmarks, crop_size);
        out_fname = strcat(out_prefix, im_fname);
        imwrite(im, fullfile('./gen/aux/temp/cropped/', out_fname));
    end


end
