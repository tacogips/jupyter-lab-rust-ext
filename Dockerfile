from tacogips/jupyter-lab-rust:latest
RUN pip3 install pandas polars
#RUN pip3 torch torchvision torchaudio
# ref. https://www.gcptutorials.com/post/how-to-install-pytorch-with-pip
RUN pip3 install torch==1.10.0+cu113 torchvision==0.11.1+cu113 torchaudio==0.10.0+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

WORKDIR /notebooks

EXPOSE 8888

CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''","--NotebookApp.disable_check_xsrf=True"]

