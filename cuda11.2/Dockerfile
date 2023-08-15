
# 使用 NVIDIA CUDA 11.2 基础镜像
FROM nvidia/cuda:11.2.2-cudnn8-runtime-ubuntu20.04

# 设置环境变量
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# 设置时区为Asia/Shanghai
ENV TZ=Asia/Shanghai
# 替换为阿里云的软件源
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN sed -i 's/http:\/\/security.ubuntu.com/http:\/\/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y python3.8 python3.8-dev python3.8-distutils python3-pip

# 安装 JupyterLab
RUN pip install jupyterlab -i https://mirrors.aliyun.com/pypi/simple
COPY requirements.txt /notebooks/
RUN pip install -r /notebooks/requirements.txt -i https://mirrors.aliyun.com/pypi/simple

# 设置 JupyterLab 的默认目录
WORKDIR /notebooks

# 暴露 JupyterLab 的端口
EXPOSE 8888

# 启动 JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

