from lettuce import *

@step('que eu tenha um (\d+) de um produto')
def eu_tenho_id(step, id):
    world.id = int(id)

@step('tenha uma quantidade (\d+)')
def tenho_quantidade(step, quantidade):
    world.quantidade = int(quantidade)

@step('eu adicionar o produto')
def adicionar_produto(step):
    world.result = add_product(world.produto,world.quantidade)

@step('é retornado 1')
def retorna_sucesso(step, expected):
    assert (world.result == expected)
