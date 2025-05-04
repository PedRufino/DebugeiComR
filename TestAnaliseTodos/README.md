# 📦 TestAnaliseTodos

**TestAnaliseTodos** é um projeto em R que utiliza uma classe `R6` para interagir com a API [JSONPlaceholder](https://jsonplaceholder.typicode.com), focando nos recursos do tipo `to-do`.

O objetivo é demonstrar o uso de boas práticas em requisições HTTP e testes automatizados utilizando o pacote `testthat`.

---

## 🚀 Funcionalidades

- Verifica se a API está online
- Busca todos os to-dos
- Busca um to-do por ID
- Filtra to-dos por ID de usuário
- Filtra por status: pendente ou completo
- Testes automatizados com `testthat`

---

## 📁 Estrutura do Projeto

<pre>
  TestAnaliseTodos/
  ├── client/
  │ └── jsonplaceholder_todos.R # Classe principal com métodos de requisição
  ├── tests/
  │ ├── testthat/
  │ │ └── test_jsonplaceholdertodos.R # Arquivo de testes automatizados
  │ └── testthat.R # Arquivo de execução dos testes
  ├── DESCRIPTION # Metadata do projeto estilo pacote R
  └── README.md # Este arquivo
</pre>

---

## 📦 Instalação de Dependências

Antes de rodar o projeto, instale os pacotes necessários:

```r
install.packages(c("httr", "R6", "testthat"))