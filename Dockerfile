FROM python

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "flask", "--app", "main", "run", "--host=0.0.0.0", "--debug"]
