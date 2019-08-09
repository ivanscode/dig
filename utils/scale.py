import sys, os
from glob import glob
from skimage import io
import skimage.transform as st
import numpy as np
from multiprocessing.dummy import Pool as ThreadPool 

def saveImage(image, path, folder):
    name = path.strip().split('/')[-1][:-4]
    io.imsave(os.path.join(folder, name + '.jpg'), image)

def cropImage(image_path):
    image = io.imread(image_path)

    new_image = st.resize(image, (160, 160), anti_aliasing=True, mode='constant')
    new_image = 255 * new_image
    new_image = new_image.astype(np.uint8)

    splitPath = image_path.split('/')

    fdir = splitPath[-2]

    save_folder = '../gen/aux/temp/cropped/' + fdir
    if not os.path.exists(save_folder):
        os.mkdir(save_folder)

    saveImage(new_image, image_path, save_folder)

image_folder = '../gen/aux/temp/cropped-224'

types = ('*/*.jpg', '*/*.png')
image_path_list= []
for files in types:
    image_path_list.extend(glob(os.path.join(image_folder, files)))
total_num = len(image_path_list)

pool = ThreadPool(8) 
results = pool.map(cropImage, image_path_list)

    



