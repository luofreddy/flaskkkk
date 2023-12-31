# 使用官方 Python 映像作為基礎映像
FROM python:3.8

# 設定工作目錄
WORKDIR /app

COPY requirements.txt .

# 安裝 Flask
RUN pip install -r requirements.txt 

# 將本地的所有內容複製到工作目錄
COPY . .

# 定義容器啟動時要執行的命令
CMD ["python", "app.py"]
