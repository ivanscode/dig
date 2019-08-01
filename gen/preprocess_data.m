function preprocess_data(input)
% Detect landmarks and align faces to a normalized pose (via an affine
% transformation)

py_cmd = 'python'; % update me
py_script = './aux/image-registration/face_landmark_detection.py'; % update me
dlib_model = './aux/shape_predictor_68_face_landmarks.dat'; % update me

files = [dir(strcat(input, '*.jpg')); dir(strcat(input, '*.png'))];
len = size(files);
for i = 1:len(1)
    ims_path = fullfile(input, files(i).name);
    face_landmark_detection(py_cmd, py_script, dlib_model, ims_path, '*.*');
    %align_vgg_pose(ims_path, '*.*', strcat('./temp/csv/', refs(i).name));
end
