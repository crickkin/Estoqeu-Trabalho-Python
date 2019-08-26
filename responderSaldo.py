# encoding: utf-8
from xmlrpc.server import SimpleXMLRPCServer
from datetime import datetime

def search_product(id):
    for i in listaProdutos:
        if (id == i[0]):
            return i
    # Caso nao encontre o produto, retorna -1
    return -1

def add_product(id, qtd):
    listaProdutos.append([id, qtd])
    print(search_product(id))
    print(listaProdutos)

    return 1

def remove_product(id):
    for i in listaProdutos:
        if (id == i[0]):
            del listaProdutos[i]
            return 1
    return -1

def add_to_stock(id, qtd):
    if qtd > 0:
        produto = search_product(id)
        if (produto == -1):
            add_product(id, qtd)
            return 1
        
        produto[1] += qtd

        return 1
    return 0

def remove_from_stock(id, qtd):
    produto = search_product(id)
    if (produto == -1):
        return -1

    if (produto[1] >= qtd):
        produto[1] -= qtd
        return 1

    print('Nao foi possovel remover produtos de estoque, prov�velmente voc� tentou remover mais do que tinha.')
    return 0

listaProdutos = [
    [1, 8],
    [2, 5],
    [3, 20],
    [4, 83]
]

server = SimpleXMLRPCServer(("localhost", 8887))
print ("Listening on port 8887...")
server.register_function(add_product,"adicionaProduto")
server.register_function(search_product,"buscaProduto")
server.register_function(add_to_stock,"adicionaEstoque")
server.register_function(remove_from_stock,"faturaProduto")
server.register_function(remove_product,"removeProduto")
server.register_instance(datetime)
server.serve_forever()