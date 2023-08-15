# 
## build
docker build -t jupyter_image:torch2.0.0-cuda11.7-cudnn8 .


## run
docker run --gpus all -p 8888:8888 -v workspace:/workspace -it jupyter_image:torch2.0.0-cuda11.7-cudnn8

然后浏览器打开8888端口，输入token