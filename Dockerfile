FROM python:3-slim
WORKDIR /usr/share/webedit/
COPY webedit /usr/share/webedit/
COPY js /usr/share/webedit/js
COPY views /usr/share/webedit/views
RUN pip install --no-cache-dir docker flask_basicauth
EXPOSE 8080
ENTRYPOINT [ "/usr/share/webedit/webedit" ]