
# aws_tf 

Projeto com o objetivo de prover infra estrutura via código.

## Deploy

Para fazer o deploy desse projeto siga os seguintes passos:

### Terraform 

#### 1 passo
Iniciliaze o terraform

```bash
  terraform init
```

#### 2 passo 
Construa o plano com base no arquivo main.tf 

```bash
  terraform plan
```

#### 3 passo 
Aplique o plano

```bash
  terraform apply
```

### AWS 

#### 1 passo 
Crie um certificado de permissao a instância do tipo pem e insira no projeto

#### 2 passo 
Crie um grupo com permissao para entrada e saida de trafego 

#### 3 passo 
Adicione a instancia o grupo criado 

#### 4 passo 
Execute o comando ssh para se conectar a instância do ponto onde encontra-se 
a chave de permissão. 

```bash
  ssh -i <nome_certificado_pem> <url_instancia>
```

### Acesso instância EC2

#### 1 passo 

#### 1 passo 
criar arquivo index.html 
```bash
  echo "<h1> Ola mundo </h1>" > index.html
```

#### 2 passo 
validar se o arquivo foi criado 
```bash
  cat index.html
```

#### 3 passo 
Estando conectado na instancia execute o comando 
```bash
nohup busybox httpd -f -p 8080 &
```

## Executando o Ansible 

```bash
  playbook.yml -u ubuntu --private-key iac-rodrigues.pem -i hosts.yml
```