Feature: Gereciamento de Saldo de Estoque
    In order to Gerenciar Saldo do Estoque
    As Servidor
    We'll implement service

    Scenario: Remover com Sucesso
        Given Eu vendi 50 produtos a
        When Solicitar RemoveProdut("a", 20)
        Then Decrementar uma unidade do produto solicitado e retornar True

    Scenario: Remover Produto Inexistente
        Given Eu vendi 50 produtos z que não existe
        When Solicitar RemoveProdut("produto", quant)
        Then Retornar False

    Scenario: Remover com a Quantidade em 0
        Given Eu tenho uma quantidade de um produto em 0
        When Solicitar RemoveProdut("produto", 20)
        Then Retornar False