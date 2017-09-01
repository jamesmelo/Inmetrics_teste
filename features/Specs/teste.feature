#language:pt

Funcionalidade: Avaliação Inmetrics
Para agendar a entrevista
como candidato
deve-se realizar o teste no site

@ct1
Cenario: Cadastro de uma nova Task
Efetuar o cadastro de uma nova task no sistema

Dado que estou na página
E preencho o Usuario com "will"
E preencho a Senha com "will"
E clico no botão Log In
E clico em Create Task
E preencho o Subject com "Teste"
E preencho o Status com "In Progress"
E preencho o Priority com "Medium"
Quando clico no botão Save
Então Task "Teste" é cadastrada com sucesso 

@ct2
Cenario: Alterar de uma Task
Efetuar a alteração de uma task no sistema

Dado que estou na página
E preencho o Usuario com "will"
E preencho a Senha com "will"
E clico no botão Log In
E clico no Menu e seleciono a Task "teste" para "editar"
E altero o Status para "Completed"
Quando clico no botão Save
Então Task é alterada com sucesso 

@ct3
Cenario: Remover uma Task
Efetuar a alteração de uma task no sistema

Dado que estou na página
E preencho o Usuario com "will"
E preencho a Senha com "will"
E clico no botão Log In
E clico no Menu e seleciono a Task "Teste" para "excluir"
Quando clico no botão Remove
Então Task é removida com sucesso 