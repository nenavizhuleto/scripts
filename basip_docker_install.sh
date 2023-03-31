

# Удалить старые версии

sudo apt-get remove docker docker-engine docker.io containerd runc

# Выполнить настройку репозитория
## Выполнить обновление индекса apt и установить зависимости

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

## Добавить GPG ключ Docker

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

## Добавить репозиторий

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# Установить Docker

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# Скачать docker-compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Дать права выполнения для файла

sudo chmod +x /usr/local/bin/docker-compose

# Добавить симлинк

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose



git clone https://github.com/basip/link.git

echo "Execute `docker-compose up -d` to run bas ip"