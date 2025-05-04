library(testthat)

# Necessário definir o arquivo TestAnaliseTodos como diretório de trabalho
source("../../client/jsonplaceholder_todos.R")

todos_api  <- JsonPlaceHolderTodos$new()

test_that("Status da API deve ser 200", {
  expect_equal(todos_api$check_statu_jsonplaceholder(), 200)
})


test_that("get_todos retorna lista com elementos", {
  todos <- todos_api$get_todos()
  expect_type(todos, "list")
  expect_true(length(todos) > 0)
})


test_that("search_todo retorna item válido por ID", {
  todo <- todos_api$search_todo(1)
  expect_equal(todo$id, 1)
  expect_true("title" %in% names(todo))
})


test_that("search_todo com ID inválido gera erro", {
  expect_error(todos_api$search_todo(99999), "Erro ao buscar todo")
})


test_that("search_user retorna todos de usuário válido", {
  resultado <- todos_api$search_user(1)
  expect_type(resultado, "list")
  expect_true(all(sapply(resultado, function(x) x$userId == 1)))
})


test_that("search_user com status pendente funciona", {
  resultado <- todos_api$search_user(1, "pendente")
  expect_true(all(sapply(resultado, function(x) x$completed == FALSE)))
})

test_that("search_user com status completo funciona", {
  resultado <- todos_api$search_user(1, "completo")
  expect_true(all(sapply(resultado, function(x) x$completed == TRUE)))
})


test_that("search_user com status inválido gera erro", {
  expect_error(todos_api$search_user(1, "errado"), "Erro: 'status' deve ser")
})


test_that("status_todo com status pendente retorna itens incompletos", {
  resultado <- todos_api$status_todo("pendente")
  expect_true(all(sapply(resultado, function(x) x$completed == FALSE)))
})


test_that("status_todo com status completo retorna itens completos", {
  resultado <- todos_api$status_todo("completo")
  expect_true(all(sapply(resultado, function(x) x$completed == TRUE)))
})


test_that("status_todo com status inválido gera erro", {
  expect_error(todos_api$status_todo("xablau"), "Erro: 'status' deve ser")
})