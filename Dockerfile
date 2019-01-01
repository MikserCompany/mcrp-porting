FROM debian
RUN mkdir /mcrp
RUN mkdir /mcrp/imagetools
RUN mkdir /mcrp/patches
RUN mkdir /mcrp/unpacked
RUN mkdir /output
WORKDIR /mcrp
RUN apt update && apt install -y python3 bzip2 lzop xz-utils cpio sudo
ADD imagetools /mcrp/imagetools
ADD twrp.img /mcrp
ADD patches /mcrp/patches
RUN imagetools/unpackimg.sh --nosudo twrp.img
RUN python3 patches/patch.py
RUN imagetools/repackimg.sh 
