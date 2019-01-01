import os
import shutil

os.chdir("/mcrp/imagetools/ramdisk/twres")
img_patches = os.listdir("/mcrp/patches/images")
lang_patches = os.listdir("/mcrp/patches/languages")

for x in img_patches:
    shutil.move(("/mcrp/patches/images/"+x), ("images/"+x))
    
for x in lang_patches:
    shutil.move(("/mcrp/patches/languages/"+x), ("languages/"+x))