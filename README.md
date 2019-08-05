# Dodge Image Generator

## Preprocessing
I was not able to make Matlab call the python preprocess, so the script should be run before anything else to get the croppped images.
Inputs are:
1. dlib model path - `./gen/aux/shape_predictor_68_face_landmarks.dat`
2. path to images - same as the input path to main function
3. wildcard - Ex. `*.jpg` or `*.png`

Temporary files (landmarks and cropped images) will be generated in `./gen/aux/temp` folder.

## Dependencies
[Accessorize-to-a-crime](https://github.com/mahmoods01/accessorize-to-a-crime) has all necessary dependencies and is the backbone of this little tool
