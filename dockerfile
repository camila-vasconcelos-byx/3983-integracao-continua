# Usando a imagem base oficial do Go
FROM golang:1.22

# Instalar pacotes necessários (ca-certificates)
RUN apt-get update && apt-get install -y ca-certificates

# Copiar o código da aplicação para o contêiner
WORKDIR /app
COPY . .

# Rodar a aplicação Go
CMD ["go", "run", "main.go"]
