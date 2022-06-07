FROM tacogips/jupyter-lab-rust:latest
RUN pip3 install pandas polars

ARG CUDA_VER=cu113
ARG TORCH_VER=1.10.0
ARG TORCH_VISION_VER=0.11.1
ARG TORCH_AUDIO_VER=0.10.0

#RUN pip3 torch torchvision torchaudio
# ref. https://www.gcptutorials.com/post/how-to-install-pytorch-with-pip
RUN pip3 install torch==${TORCH_VER}+${CUDA_VER} torchvision==${TORCH_VISION_VER}+${CUDA_VER} torchaudio==${TORCH_AUDIO_VER}+${CUDA_VER} -f https://download.pytorch.org/whl/${CUDA_VER}/torch_stable.html

WORKDIR /notebooks

EXPOSE 8888

CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''","--NotebookApp.disable_check_xsrf=True"]

