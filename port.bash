docker build . --tag mcrp
docker run --name mcrp mcrp
docker cp mcrp:/mcrp/imagetools/image-new.img ./output/mcrp.img