
from pyhop import hop

# Define the operators

def coger_caja(state, d, b, c):
    if state.ubicacion_dron[d] == 'deposito' and state.ubicacion_caja[c] == 'deposito' and state.free_brazo[d][b]:
        new_state = state
        new_state.brazo_ocupado[d][b] = c
        new_state.free_brazo[d][b] = False
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

def entregar_caja(state, d, b, c, h):
    if state.brazo_ocupado[d][b] == c and state.ubicacion_dron[d] == state.ubicacion_humano[h]:
        new_state = state
        new_state.free_brazo[d][b] = True
        new_state.ubicacion_caja[state.brazo_ocupado[d][b]] = state.ubicacion_humano[h]
        new_state.cajas.remove(state.brazo_ocupado[d][b])
        new_state.humano_necesita[h].remove(state.contenido_caja[c])
        new_state.brazo_ocupado[d][b] = None
        if new_state.humano_necesita[h] == []:
            new_state.humano_necesidades[h] = False
        return new_state
    else:
        return False

# Declare the operators using Pyhop
hop.declare_operators(coger_caja, volar, entregar_caja)

# Define the goal method
def enviar_todos(state, goal):
    if goal.humano_necesidades != state.humano_necesidades:
        for h in state.humano_necesita.keys():
            for dron in state.drones:
                for con in state.humano_necesita[h]:
                        return [('enviar_cajas', dron, h, con)]+ [('enviar_todos', goal)]
    else:
        return []

def enviar_cajas(state, d,  h, con):
    for caja in state.cajas:
        for brazo in state.brazo_dron[d]:
            if state.contenido_caja[caja] == con and state.free_brazo[d][brazo]:
                return [('coger_caja', d, brazo, caja)
                    ,('volar', d, state.ubicacion_dron[d], state.ubicacion_humano[h])
                    ,('entregar_caja', d, brazo, caja, h)
                    ,('volar', d, state.ubicacion_humano[h], state.ubicacion_dron[d])]
1
# Declare the goal method and the decomposition using Pyhop
hop.declare_methods('enviar_todos', enviar_todos)
hop.declare_methods('enviar_cajas', enviar_cajas)

# Define the initial state using a Python object
state = hop.State('state')
state.locations = ['deposito', 'campo', 'uni']
state.humanos = ['humano1', 'humano2']
state.cajas = ['caja1', 'caja2', 'caja3']
state.drones = ['dron1']
state.ubicacion_dron = {'dron1': 'deposito'}
state.ubicacion_caja = {'caja1': 'deposito', 'caja2': 'deposito', 'caja3': 'deposito'}
state.brazo_dron = {'dron1': ['brazo1', 'brazo2']}
state.free_brazo = {'dron1': {'brazo1': True, 'brazo2': True}}
state.ubicacion_humano = {'humano1': 'campo', 'humano2': 'uni'}
state.contenido_caja = {'caja1': 'comida', 'caja2': 'bebida', 'caja3': 'bebida'}
state.humano_necesita = {'humano1': ['comida', 'bebida'] , 'humano2': ['bebida']}
state.humano_necesidades = {'humano1': True, 'humano2': True}
state.brazo_ocupado = {'dron1': {'brazo1': None, 'brazo2': None}}

goal = hop.Goal('goal')
goal.humano_necesidades = {'humano1': False, 'humano2': False}

# Define the Pyhop problem
prob = hop.plan(state, [('enviar_todos', goal)], hop.get_operators(), hop.get_methods(), verbose=3)