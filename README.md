# Dodge Image Generator

## Preprocess
Before generating the attack images, the input should be processed by `face_landmark_detection.py`.
Args:
1. input folder
2. wildcard (ex. if there's a file structure)

This will generate the images that can run through MatConvNet.

## Running (not done)
After runnning the preprocess, `generate.m` will create the attack images (for now, digital dodging as the only mode).

## Dependencies
[Accessorize-to-a-crime](https://github.com/mahmoods01/accessorize-to-a-crime) has all necessary dependencies and is the backbone of this little tool
