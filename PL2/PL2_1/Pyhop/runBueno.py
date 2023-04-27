
from pyhop import hop

# Define the operators

def coger_caja(state, u, d, b, c, con):
    print("variables " + str(u) + " " + str(d) + " " + str(b) + " " + str(c) + " " + str(con))
    if state.ubicacion_dron[d] == u and state.ubicacion_caja[c] == u and state.contenido_caja[c] == con and state.free_brazo[d][b]:
        print("antes del copy")
        new_state = state
        new_state.free_brazo[d][b] = False
        print("antes del return ")
        return new_state
    else:
        return False

def volar(state, d, origen, destino):
    if state.ubicacion_dron[d] == origen:
        new_state = state
        new_state.ubicacion_dron[d] = destino
        return new_state
    else:
        return False

def entregar_caja(state, u, d, b, c, con, h):
    if state.humano_necesita[h][con] and state.ubicacion_dron[d] == u and state.ubicacion_humano[h] == u and state.contenido_caja[c] == con and state.brazo_ocupado[d][b] == (c, con):
        new_state = state
        new_state.free_brazo[d][b] = True
        new_state.ubicacion_caja[c] = u
        return new_state
    else:
        return False

# Declare the operators using Pyhop
hop.declare_operators(coger_caja, volar, entregar_caja)

# Define the goal method
def enviar_todos(state, h, con):
    if state.humano_necesita[h] == con:
        return [('enviar_cajas', h, con)]
    else:
        return False

# Define the decomposition of the goal method
#def enviar_cajas(state, h, con):
#    return [('coger_caja', u, d, b, c, con) for u in state.locations for d in state.drones for b in state.brazo_dron[d] for c in state.cajas if state.ubicacion_caja[c] == u] + \
 #          [('volar', d, state.ubicacion_dron[d], h) for d in state.drones] + \
  #         [('entregar_caja', h, d, b, c, con, h) for d in state.drones for b in state.brazo_dron[d] for c in state.cajas if state.ubicacion_caja[c] == h and state.brazo_ocupado[d][b] == (c, con)] + \
   #        [('volar', d, h, state.ubicacion_dron[d]) for d in state.drones]

def enviar_cajas(state, h, con):
    return [('coger_caja', state.locations, state.drones, state.brazo_dron['dron1'], state.cajas, con)
           ,('volar', state.drones, state.ubicacion_dron['dron1'], h)
           ,('entregar_caja', h, state.drones, state.brazo_dron['dron1'], state.cajas, con, h)
           ,('volar', state.drones, h, state.ubicacion_dron['dron1'])]
1
# Declare the goal method and the decomposition using Pyhop
hop.declare_methods('enviar_todos', enviar_todos)
hop.declare_methods('enviar_cajas', enviar_cajas)

# Define the initial state using a Python object
state = hop.State('state')
state.locations = ['deposito', 'campo']
state.humanos = ['humano1']
state.cajas = ['caja1']
state.drones = ['dron1']
state.ubicacion_dron = {'dron1': 'deposito'}
state.ubicacion_caja = {'caja1': 'deposito'}
state.brazo_dron = {'dron1': ['brazo1', 'brazo2']}
state.free_brazo = {'dron1': {'brazo1': True, 'brazo2': True}}
state.ubicacion_humano = {'humano1': 'campo'}
state.contenido_caja = {'caja1': 'comida'}
state.humano_necesita = {'humano1': 'comida'}

# Define the Pyhop problem
prob = hop.plan(state, [('enviar_todos', 'humano1', 'comida')], hop.get_operators(), hop.get_methods(), verbose=3)