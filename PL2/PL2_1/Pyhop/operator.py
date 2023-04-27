
# Define the domain functions

def brazo_dron(state, d, b):
    return ('brazo-dron', d, b)

def ubicacion_dron(state, d, u):
    return ('ubicacion-dron', d, u)

def ubicacion_caja(state, c, u):
    return ('ubicacion-caja', c, u)

def contenido_caja(state, con, c):
    return ('contenido-caja', con, c)

def free_brazo(state, d, b):
    return ('free-brazo', d, b)

def brazo_ocupado(state, d, b, c, con):
    return ('brazo-ocupado', d, b, c, con)

def ubicacion_humano(state, h, u):
    return ('ubicacion-humano', h, u)

def humano_necesita(state, h, con):
    return ('humano-necesita', h, con)

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