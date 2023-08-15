docker run --name jupyterlab --restart always --gpus all -p 8888:8888 -v /home/kai/jupyter/cuda11.7/workspace:/workspace -itd jupyter_image:torch2.0.0-cuda11.7-cudnn8

# docker run --name jupyterlab --restart always --gpus all -p 8888:8888 -v /home/kai/jupyter/cuda11.7/workspace:/workspace -it jupyter_image:torch2.0.0-cuda11.7-cudnn8 bash