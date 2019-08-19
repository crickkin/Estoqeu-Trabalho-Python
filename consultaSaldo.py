from responderSaldo import *

def consultar_saldo(id):
    produto = search_product(id)
    if (produto == -1):
        print('Produto Inexistente!')
        return produto
    else:
        print(produto[1])
        return produtoproduto[1]
