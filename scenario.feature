Feature: Gereciamento de Saldo de Estoque
    In order to Gerenciar Saldo do Estoque
    As Servidor
    We'll implement service

    Scenario Outline: Busca Produto Existente
        Given que eu tenha um id de um produto <id>
        When eu buscar o produto
        Then é retornado uma lista com o id e a quantidade

    Examples:
        | id | quantidade |
        | 1  | 1 |
        | 1  | 0 |
        | 2  | 1 |
        | 2  | 0 |

    Scenario Outline: Busca Produto Inexistente
        Given que eu tenha um id de um produto que nao existe <id>
        When eu buscar o produto
        Then é retornado -1

    Examples:
        | id | quantidade |
        | 1  | 1 |
        | 1  | 0 |
        | 2  | 1 |
        | 2  | 0 |

    Scenario Outline: Adicionar Produto
        Given que eu tenha um <id> de um produto
        And tenha uma quantidade <qtd>
        When eu adicionar o produto
        Then é retornado 1

    Examples:
        | id | qtd |
        | 1  | 2 |
        | 2  | 4 |
        | 3  | 1 |
        | 4  | 3 |

    Scenario Outline: Remover Produto
        Given que eu tenha um <id> de um produto
        When eu remover o produto
        Then é retornado 1

    Examples:
        | id | 
        | 1  |
        | 2  |
        | 3  |
        | 4  |

    Scenario Outline: Remover Produto Inexistente
        Given que eu tenha um <id> de um produto
        When eu remover o produto
        Then é retornado -1

    Examples:
        | id | 
        | 1  |
        | 2  |
        | 3  |
        | 4  |

    Scenario Outline: Adicionar Produto
        Given que eu tenha um <id> de um produto
        And tenha uma quantidade <qtd>
        When eu adicionar o produto
        Then é retornado 1

    Examples:
        | id | qtd |
        | 1  | 2 |
        | 2  | 4 |
        | 3  | 1 |
        | 4  | 3 |

    Scenario Outline: Adicionar ao Estoque
        Given que eu tenha um <id> de um produto
        And tenha uma quantidade <qtd>
        When eu adicionar ao estoque
        Then é retornado 1

    Examples:
        | id | qtd |
        | 1  | 2 |
        | 2  | 4 |
        | 3  | 1 |
        | 4  | 3 |

    Scenario Outline: Adicionar ao Estoque Sem Quantidade
        Given que eu tenha um <id> de um produto
        And tenha uma quantidade <qtd>
        When eu adicionar ao estoque
        Then é retornado 0

    Examples:
        | id | qtd |
        | 1  | 0 |
        | 2  | 0 |
        | 3  | 0 |
        | 4  | 0 |

    Scenario Outline: Remover do Estoque
        Given que eu tenha um <id> de um produto
        And tenha uma quantidade <qtd>
        When eu remover do estoque
        Then é retornado 1

    Examples:
        | id | qtd |
        | 1  | 2 |
        | 2  | 3 |
        | 3  | 5 |
        | 4  | 1 |

    Scenario Outline: Remover do Estoque com Quantidade Superior
        Given que eu tenha um <id> de um produto
        And tenha uma quantidade <qtd>
        When eu remover do estoque
        Then é retornado 0

    Examples:
        | id | qtd |
        | 1  | 2 |
        | 2  | 3 |
        | 3  | 5 |
        | 4  | 1 |

    Scenario Outline: Remover do Estoque de Um Produto Inexistente
        Given que eu tenha um <id> de um produto
        And tenha uma quantidade <qtd>
        When eu remover do estoque
        Then é retornado -1

    Examples:
        | id | qtd |
        | 1  | 2 |
        | 2  | 3 |
        | 3  | 5 |
        | 4  | 1 |