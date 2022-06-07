from rust:tacogips/jupyter-lab-rust:latest
RUN pip3 install pandas polars

WORKDIR /notebooks

EXPOSE 8888

CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''","--NotebookApp.disable_check_xsrf=True"]

