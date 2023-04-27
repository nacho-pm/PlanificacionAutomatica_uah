from pyhop import hop

# Operators

def coger_caja(state, u, d, b, c, con):
    if state['brazo_dron'][d][b] and state['ubicacion_dron'][d] == u and state['ubicacion_caja'][c] == u and state['contenido_caja'][c] == con and state['free_brazo'][d][b]:
        new_state = state.copy()
        new_state['free_brazo'][d][b] = False
        new_state['ubicacion_caja'][c] = 'nil'
        new_state['brazo_ocupado'][d][b] = {'caja': c, 'contenido': con}
        return new_state
    return False

def volar(state, d, origen, destino):
    if state['ubicacion_dron'][d] == origen:
        new_state = state.copy()
        new_state['ubicacion_dron'][d] = destino
        return new_state
    return False

def entregar_caja(state, u, d, b, c, con, h):
    if state['humano_necesita'][h] == con and state['ubicacion_dron'][d] == u and state['ubicacion_humano'][h] == u and state['contenido_caja'][c] == con and state['brazo_ocupado'][d][b] == {'caja': c, 'contenido': con}:
        new_state = state.copy()
        new_state['brazo_ocupado'][d][b] = False
        new_state['free_brazo'][d][b] = True
        new_state['ubicacion_caja'][c] = u
        return new_state
    return False

# Methods

def enviar_todos(state, h, con):
    for c in state['contenido_caja']:
        if state['contenido_caja'][c] == con:
            if state['ubicacion_caaj'][c] == 'deposito':
                state = [('coger_caja', state['ubicacion_dron']['dron1'], 'dron1', 'brazo1', c, con)]
                state = [('volar', 'dron1', 'deposito', 'campo')]
                state = [('entregar_caja', 'campo', 'dron1', 'brazo2', c, con, h)]
                state = [('volar', 'dron1', 'campo', 'deposito')]
    return state


def enviar_todos_wrapper(state, h, con):
    return [('enviar_todos', h, con)]
# Pyhop
domain_name = 'domain'

# Initial State
state = hop.State('state')
state.ubicacion = {'deposito', 'campo'}
state.humano = 'humano1'
state.caja = 'caja1'
state.dron = 'dron1'
state.brazo = {'brazo1', 'brazo2'}
state.contenido = 'comida'
state.ubicacion_dron = {'dron1': 'deposito'}
state.ubicacion_caja = {'caja1': 'deposito'}
state.brazo_dron = {'dron1': {'brazo1', 'brazo2'}}
state.free_brazo = {'dron1': {'brazo1': True, 'brazo2': True}}
state.ubicacion_humano = {'humano1': 'campo'}
state.contenido_caja = {'caja1': 'comida'}
state.humano_necesita = {'humano1': 'comida'}

# Goal
#state.goal = ('enviar_todos', 'humano1', 'comida')
state.goal = ('enviar_todos_wrapper', 'humano1', 'comida')
# Run Pyhop
hop.plan(state, [('enviar_todos_wrapper', 'humano1', 'comida')], hop.get_operators(), hop.get_methods(), verbose=3)



