# coding: utf-8

def search_product(id):
    for i in listaProdutos:
        if (id == i[0]):
            return i
    # Caso não encontre o produto, retorna -1
    return -1

def find_position(id):
    return

def add_product(id, qtd):
    listaProdutos.append([id, qtd])
    print(search_product(id))
    print(listaProdutos)

    return 1

def remove_product(id):
    return

def add_to_stock(id, qtd):
    produto = search_product(id)
    if (produto == -1):
        add_product(id, qtd)
        return 1
    
    produto[1] += 1

    return 1

def remove_from_stock(id, qtd):
    produto = search_product(id)
    if (produto == -1):
        return 0
    
    if (produto[1] >= qtd):
        produto[1] -= qtd
        return 1
    
    print('Não foi possível remover produtos de estoque, provávelmente você tentou remover mais do que tinha.')
    return 1

listaProdutos = [
    ['101210', 8],
    ['101211', 5],
    ['102089', 20],
    ['901040', 83]
]

# print(remove_from_stock('101211', 6))
add_to_stock('2', 10)