library(httr)
library(R6)

# Classe responsável por interagir com a API JSONPlaceholder (recursos "todos")
JsonPlaceHolderTodos = R6Class("JsonPlaceHolderTodos",
 public = list(
   address = NULL,
   
   # Construtor da classe. Define o endpoint base da API.
   initialize = function(address = "https://jsonplaceholder.typicode.com") {
     self$address <- address
   },
   
   
   # Verifica o status HTTP da API base.
   check_statu_jsonplaceholder = function(){
     return(status_code(GET(self$address)))
   },
   
   
   # Recupera todos os itens "to-do" disponíveis na API.
   get_todos = function() {
     response <- GET(paste0(self$address, "/todos"))
     
     if (status_code(response) != 200){
       stop("Erro ao buscar todos: ", status_code(response))
     }
     
     # Retorna o conteúdo da resposta como lista R
     content(response, "parsed")
   },
   
   # Recupera um item "to-do" específico a partir do seu ID.
   search_todo = function(id_todo){
     response <- GET(paste0(self$address, "/todos/", id_todo))
     
     if (status_code(response) != 200){
       stop("Erro ao buscar todo: ", status_code(response))
     }
     
     content(response, "parsed")
   },
   
   
   # Recupera todos os "to-dos" associados a um usuário específico.
   # Pode ser filtrado opcionalmente por status: "pendente" ou "completo".
   search_user = function(id_user, status = '') {
     url <- paste0(self$address, "/todos?userId=", id_user)
     
     if (status != ''){
       status_map <- c("completo" = "true", "pendente" = "false")
       if (!(status %in% names(status_map))){
         stop("Erro: 'status' deve ser um dos seguintes valores: 'pendente', 'completo'.")
       }
       
       url <- paste0(url, "&completed=", status_map[status])
     }
     
     response <- GET(url)
     
     if (status_code(response) != 200){
       stop("Erro ao buscar todo por usuario: ", status_code(response))
     }
     
     content(response, "parsed")
   },
   
   
   # Recupera todos os "to-dos" com base no status de conclusão.
   # Parâmetro "status" deve ser "pendente" ou "completo".
   status_todo = function(status = "pendente"){
     status_map <- c("completo" = "true", "pendente" = "false")
     
     if (!(status %in% names(status_map))){
       stop("Erro: 'status' deve ser um dos seguintes valores: 'pendente', 'completo'.")
     }
     
     response <- GET(paste0(self$address, "/todos?completed=", status_map[status]))
     
     if (status_code(response) != 200){
       stop("Erro ao buscar todo por status: ", status_code(response))
     }
     
     content(response, "parsed")
   }
   
 )
)

teste <- JsonPlaceHolderTodos$new()
teste$search_todo(99999)

