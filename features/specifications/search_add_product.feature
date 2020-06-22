#language:pt

Funcionalidade: Buscando e adicionando produto no carrinho sem estar logado
Para que eu posso realizar uma busca e adicionar no carrinho
Sendo um usuário não logada
Posso adicionar vários itens

@wip
Cenario: Busca de um produto específico
Dado que acesso a home
Quando realizo a busca de um produto específico
Então verifico se buscou pelo produto correto

Cenario: Busca por contexto
Dado que acesso a home
Quando realizo a busca de um produto por contexto
Então verifico se buscou algo do contexto informado

Cenario: Busca por um produto não existente
Dado que acesso a home
Quando realizo a busca de um produto não existente
Então vejo a mensagem "Não encontramos nenhum resultado na sua busca."

@abc
Cenario: Selecionar um produto
Dado que acesso a home
Quando realizo a busca de um produto específico
E seleciono um item
Então verifico se o produto foi o escolhido

Cenario: Adicionar um único produto no carrinho
Dado que acesso a home
Quando realizo a busca de um produto específico
E seleciono um item
E adiciono o item escolhido no carrinho
Então verifico se o produto foi adicionado

Cenario: Remoção dos produtos do carrinho
Dado que acesso a home
Quando realizo a busca de um produto específico
E adiciono mais de um item no carrinho
E removo os produtos
Então visualizo a mensagem "Seu carrinho está vazio"
