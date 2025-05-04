library(testthat)

# Necessário definir o arquivo TestAnaliseTodos como diretório de trabalho
source("../../client/jsonplaceholder_todos.R")
todos_api  <- JsonPlaceHolderTodos$new()


# Testa se a API está online e responde com o status HTTP 200
test_that("Status da API deve ser 200", {
  expect_equal(todos_api$check_statu_jsonplaceholder(), 200)
})


# Verifica se o método get_todos retorna uma lista com pelo menos um item
test_that("get_todos retorna lista com elementos", {
  todos <- todos_api$get_todos()
  expect_type(todos, "list")  # Confirma que o retorno é uma lista
  expect_true(length(todos) > 0)  # Verifica que a lista não está vazia
})


# Testa se buscar um TODO com ID 1 retorna o item correto e com campo "title"
test_that("search_todo retorna item válido por ID", {
  todo <- todos_api$search_todo(1)
  expect_equal(todo$id, 1)  # Verifica se o ID retornado é 1
  expect_true("title" %in% names(todo))  # Confirma que o campo "title" existe
})


# Verifica se buscar um TODO com ID inexistente gera um erro apropriado
test_that("search_todo com ID inválido gera erro", {
  expect_error(todos_api$search_todo(99999), "Erro ao buscar todo")
})


# Testa se a função retorna todos os TODOs de um usuário com ID 1
test_that("search_user retorna todos de usuário válido", {
  resultado <- todos_api$search_user(1)
  expect_type(resultado, "list")  # Confirma que o retorno é uma lista
  expect_true(all(sapply(resultado, function(x) x$userId == 1)))  # Todos têm userId == 1
})


# Verifica se ao filtrar por "pendente", todos os TODOs têm completed == FALSE
test_that("search_user com status pendente funciona", {
  resultado <- todos_api$search_user(1, "pendente")
  expect_true(all(sapply(resultado, function(x) x$completed == FALSE)))
})


# Verifica se ao filtrar por "completo", todos os TODOs têm completed == TRUE
test_that("search_user com status completo funciona", {
  resultado <- todos_api$search_user(1, "completo")
  expect_true(all(sapply(resultado, function(x) x$completed == TRUE)))
})


# Testa se passar um status inválido gera uma mensagem de erro apropriada
test_that("search_user com status inválido gera erro", {
  expect_error(todos_api$search_user(1, "errado"), "Erro: 'status' deve ser")
})


# Verifica se a função status_todo retorna apenas TODOs incompletos ao filtrar por "pendente"
test_that("status_todo com status pendente retorna itens incompletos", {
  resultado <- todos_api$status_todo("pendente")
  expect_true(all(sapply(resultado, function(x) x$completed == FALSE)))
})


# Verifica se a função status_todo retorna apenas TODOs completos ao filtrar por "completo"
test_that("status_todo com status completo retorna itens completos", {
  resultado <- todos_api$status_todo("completo")
  expect_true(all(sapply(resultado, function(x) x$completed == TRUE)))
})


# Testa se passar um status inválido em status_todo gera erro
test_that("status_todo com status inválido gera erro", {
  expect_error(todos_api$status_todo("xablau"), "Erro: 'status' deve ser")
})
