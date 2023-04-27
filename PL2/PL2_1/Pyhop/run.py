from __future__ import print_function
from pyhop import hop

import operator
import methods

print('')
hop.print_operators(hop.get_operators())
print('')
hop.print_methods(hop.get_methods())

# Define the initial state

state = State('state')
state.predlist = [brazo_dron(state, 'dron', 'brazo1'),
                  brazo_dron(state, 'dron', 'brazo2'),
                  ubicacion_dron(state, 'dron', 'a'),
                  ubicacion_caja(state, 'caja1', 'a'),
                  ubicacion_caja(state, 'caja2', 'b'),
                  contenido_caja(state, 'contenido1', 'caja1'),
                  contenido_caja(state, 'contenido2', 'caja2'),
                  free_brazo(state, 'dron', 'brazo1'),
                  free_brazo(state, 'dron', 'brazo2'),
                    free_ubicacion(state, 'dron', 'a'),