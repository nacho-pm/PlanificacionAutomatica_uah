
from pyhop import *

# Define the methods

def enviar_todo(state, h, con):
    if humano_necesita(state, h, con):
        return [('coger-caja', u, d, b, c, con), ('volar', d, origen, destino), ('entregar-caja', destino, d, b, c, con, h), ('volar', d, destino, origen)]
    else:
        return False

hop.declare_methods('enviar-todo', enviar_todo)



