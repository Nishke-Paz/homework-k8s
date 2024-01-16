# Шаги выполнениния задания:
1) `kubectl create namespace test`
2) Скачивание образа python:3.10-alpine: `docker pull python:3.10-alpine`
3) Созадние файла `Dockerfile`
4) Сборка docker image: `docker build -t my-web-app:1.0.0 .`
  4.1) Проверка работы: `docker run -p 8000:8000 my-web-app:1.0.0`
5) Размещение образа на Docker Hub: `docker tag my-web-app:1.0.0 chipaza/my-web-app:1.0.0` `docker push chipaza/my-web-app:1.0.0`
6) Создание kubernetes deployment manifest `deployment.yaml`
7) Установка в кластер `kubectl apply -f deployment.yaml --namespace test`
8) Установка доступка к приложение: `kubectl port-forward --address 0.0.0.0 deployment/web-1 8080:8000 --namespace test`
9) Проверка работы: открыть веб-браузер и перейти по адресу `http://127.0.0.1:8080/hello.html`
   
