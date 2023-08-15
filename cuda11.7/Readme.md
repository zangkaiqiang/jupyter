# 
## 生成密码
···
python -c "from notebook.auth import passwd; print(passwd(algorithm='sha1'))"
···
将Dockerfile里的sha1密码使用生成的sha1密码替换，该密码为jupyterlab的登录密码

## build
docker build -t jupyter_image:torch2.0.0-cuda11.7-cudnn8 .


## run
docker run --gpus all -p 8888:8888 -v /home/kai/workspace:/workspace -it jupyter_image:torch2.0.0-cuda11.7-cudnn8

然后浏览器打开8888端口，输入密码
