from __future__ import print_function
from pyhop import hop



# Define the operators

def coger_caja(state, u, d, b, c, con):
    if brazo_dron(state, d, b) and ubicacion_dron(state, d, u) and ubicacion_caja(state, c, u) and contenido_caja(state, con, c) and free_brazo(state, d, b):
        return [state.replace(brazo_ocupado(state, d, b, c, con), free_brazo(state, d, b)),]
    else:
        return False

def volar(state, d, origen, destino):
    if ubicacion_dron(state, d, origen):
        return [state.replace(ubicacion_dron(state, d, origen), ubicacion_dron(state, d, destino)),]
    else:
        return False

def entregar_caja(state, u, d, b, c, con, h):
    if humano_necesita(state, h, con) and ubicacion_dron(state, d, u) and ubicacion_humano(state, h, u) and contenido_caja(state, con, c) and brazo_ocupado(state, d, b, c, con):
        return [state.replace(brazo_ocupado(state, d, b, c, con), free_brazo(state, d, b)),]
    else:
        return False
    
hop.declare_operators(coger_caja, volar, entregar_caja)

# Define the methods

def enviar_todo(state, h, con): 
    return [('coger_caja', u, d, b, c, con) for u in state.locations for d in state.drones for b in state.brazos_drones[d] for c in state.cajas if state.loc[c] == u] + \
           [('volar', d, state.loc[d], h) for d in state.drones] + \
           [('entregar_caja', h, d, b, c, con, h) for d in state.drones for b in state.brazos_drones[d] for c in state.cajas if state.loc[c] == h and state.brazo_ocupado[d][b] == (c, con)] + \
           [('volar', d, h, state.loc[d]) for d in state.drones]

hop.declare_methods('enviar-todo', enviar_todo)


print('')
hop.print_operators(hop.get_operators())
print('')
hop.print_methods(hop.get_methods())

# Define the initial state

state = hop.State('state')

state.loc = {'dron1': 'deposito' , 'persona1': 'bolera' , 'persona2': 'bolera' , 'persona3': 'estadio' , 
              'persona4': 'estadio' , 'caja1': 'deposito' , 'caja2': 'deposito' , 'caja3': 'deposito' , 'caja4': 'deposito' }

state.contenidos = {'caja1': 'comida' , 'caja2': 'medicinas' , 'caja3': 'medicinas' , 'caja4': 'bebida' }

state.brazo = {'dron1': {'brazo1': True , 'brazo2': True }}

state.necesita = {'persona1': {'comida': False , 'medicinas': True , 'bebida': True }, 
                  'persona2': {'comida': False , 'medicinas': False , 'bebida': True }, 
                  'persona3': {'comida': False , 'medicinas': True , 'bebida': False },
                  'persona4': {'comida': False , 'medicinas': False , 'bebida': False }
                  }

state.humano = {'persona1': True , 'persona2': True , 'persona3': True , 'persona4': True }

hop.plan(state, [('enviar-todo', 'persona1', 'medicinas'), ('enviar-todo', 'persona1', 'bebida'), ('enviar-todo', 'persona2', 'bebida'), ('enviar-todo', 'persona3', 'medicinas'), ('enviar-todo', 'persona4', 'bebida')], hop.get_operators(), hop.get_methods(), verbose=3)

# Define the goal state

goal = hop.Goal('goal')

goal.necesita = {'persona1': {'comida': False , 'medicinas': False , 'bebida': False },
                    'persona2': {'comida': False , 'medicinas': False , 'bebida': False },
                    'persona3': {'comida': False , 'medicinas': False , 'bebida': False },
                    'persona4': {'comida': False , 'medicinas': False , 'bebida': False }
                    }
