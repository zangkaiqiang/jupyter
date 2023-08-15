
# 使用 NVIDIA CUDA 11.7 基础镜像
FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime

# 设置环境变量
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# 设置时区为Asia/Shanghai
# ENV TZ=Asia/Shanghai

# 安装 JupyterLab
RUN pip install jupyterlab -i https://mirrors.aliyun.com/pypi/simple
RUN pip install jupyter -i https://mirrors.aliyun.com/pypi/simple

# 设置 JupyterLab 的默认目录
WORKDIR /workspace
RUN jupyter notebook --generate-config && \
    echo "c.NotebookApp.password = 'sha1:0c1aece64c66:32269535a80693eed292049194c0b66679ed7dd7'" >> ~/.jupyter/jupyter_notebook_config.py

# 暴露 JupyterLab 的端口
EXPOSE 8888

# 启动 JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

