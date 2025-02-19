# 📚 Active Jobs
Uma pequena demonstração do princípio de processamento assíncrono de e-mails usando Rails Active Job com Sidekiq como adaptador de fila. Esta API mostra o gerenciamento eficiente de jobs em segundo plano para operações de e-mail em massa.

## 💻 Tecnologias
- Ruby 3.3.0
- Rails 8.0.1 
- PostgresQL (Porta 5432)
- Redis (Porta 6379)
- Sidekiq (http://localhost:3000/sidekiq)
- Mailcatcher (http://localhost:1080)

## 📌 Visão Geral do Projeto
Este projeto foi desenvolvido para ilustrar de forma simples e direta como os Active Jobs podem ser utilizados para gerenciar tarefas assíncronas. A ideia é mostrar o fluxo básico de como um job pode ser enfileirado e processado em segundo plano, garantindo que operações demoradas, como o envio de e-mails, não bloqueiem a execução principal da aplicação.  

Sidekiq desempenha um papel crucial no gerenciamento do envio de e-mails de forma assíncrona.

Redis é utilizado para armazenar temporariamente (cache) um job enfileirado até que o Sidekiq o processe.

Mailcatcher é utilizado para capturar todos os e-mails enviados pela aplicação em um ambiente de desenvolvimento, permitindo a visualizção e inspeção destes e-mails.

## 📜 Principais Funcionalidades

1. **Envio de Emails**
  Para realizar o disparo do email é necessário popular o banco através do comando "rails dev:setup", acessar o "rails c" e executar a seguinte linha de comando:

    ```bash
    EventJob.perform_later
  Através deste comando o EventJob é enfileirado, criando SendEventJob para cada usuário, acionando o UserMailer para enviar um e-mail ao usuário correspondente.  
  Todo o processo é gerenciado de forma assíncrona pelo Sidekiq, sem bloquear a aplicação principal.
