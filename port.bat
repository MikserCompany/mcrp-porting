@echo off
docker build . -t mcrp:latest
docker run --name mcrp mcrp
docker cp mcrp:/mcrp/imagetools/image-new.img output/mcrp.img