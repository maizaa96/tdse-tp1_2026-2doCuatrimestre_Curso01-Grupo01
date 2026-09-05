### Descripciones de Eventos y Acciones del Modelo Sensor (Pulsador):

El módulo sensor no es el botón en si mismo, sino que es el módulo del código en C encargado de procesar las señales que llegan por el uso del botón.

Primeramente, si definimos a un evento como un suceso con una probabilidad distinta de cero de ocurrir en algún momento dado, entonces podemos identificar
dos eventos principales a la hora de trabajar con un botón (específicamente con el botón de entrada):

Por un lugar, tenemos el evento: "Botón de entrada presionado" == "event => `EV_ENTRY_BTN_PRESSED`"

Por otro lado, tenemos el evento: "Botón de entrada no presionado" == "event => `EV_ENTRY_BTN_NOT_PRESSED`"

>**Nota:** Como nos pide usar el patrón Update by Time Code (Polling), creemos que el único evento que dispara transiciones entre estados es el *tick*, por tanto, estos eventos definidos previamente no serían eventos en sí sino [guards], que se usan equivalentemente a *pressed* y *!pressed*. Posteriormente será consultado con la cátedra.

Por último, podemos tomar al tick de 1ms como otro evento; cuando pasa 1ms se le envía al sensor el evento "tick" que triggerea el sensado. El resultado de ese sensado es evaluado por una guarda que decide a qué estado transicionar.

Estos estados que enumeramos a continuación son justamente los resultados del sensado.

Estados: 
| Estado (Nomenclatura original) | Nuestra nomenclatura | Descripción / Notas |
| :--- | :--- | :--- |
| `BUTTON_UP` | `Signal_UP` | Botón en estado alto (liberado) |
| `BUTTON_DOWN` | `Signal_DOWN` | Botón en estado bajo (presionado) |
| `BUTTON_Rising` | `Signal_Rising` | Flanco de subida del botón |
| `BUTTON_Falling` | `Signal_Falling` | Flanco de bajada del botón |

> **Nota:** Usamos `Signal` en lugar de `Button` para diferenciar fácilmente las señales lógicas de los eventos físicos.
(Usamos Signal en vez de Button para diferenciarlos más facil de los eventos).

Una vez que ya tengo un estado, comunico mediante una acción (es decir, una señal) el estado actual a System. Al confirmar la entrada a BUTTON_DOWN o BUTTON_UP, se emiten las señales EV_SYS_ENTRY_BTN_PRESSED y EV_SYS_ENTRY_BTN_RELEASED respectivamente. Los estados transitorios (BUTTON_FALLING y BUTTON_RISING) no emiten señales al módulo System, ya que no es información útil para este, que solo requiere saber si está presionado o no. 

También tenemos como accion interna el control del temporizador, con la inicialización:

> (entry / timer=0) Usado al entrar a un estado intermedio.

Y la verificación a través de la guarda ([guard]) en la transición del estado intermedio al estado estable, ya sea UP o DOWN:

> *tick [timer >= DEL_ENTRY_BTN && pressed] / EV_SYS_ENTRY_BTN_PRESSED*

> *tick [timer >= DEL_ENTRY_BTN && !pressed] / EV_SYS_ENTRY_BTN_RELEASED*

(Siendo **pressed** una variable booleana y **timer** un acumulador de ticks).

### Tabla de Estados y Excitaciones del modelo Sensor

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **BUTTON_UP** *(Signal_UP)* | `tick` | [pressed] | **BUTTON_FALLING** *(Signal_Falling)* | entry / timer = 0 (en destino) |
| **BUTTON_FALLING** *(Signal_Falling)* | `tick` | `[timer >= DEL_ENTRY_BTN && pressed]` | **BUTTON_DOWN** *(Signal_DOWN)* | `EV_SYS_ENTRY_BTN_PRESSED` |
| **BUTTON_FALLING** *(Signal_Falling)* | `tick` | [!pressed] | **BUTTON_UP** *(Signal_UP)* | - |
| **BUTTON_DOWN** *(Signal_DOWN)* | `tick` | [!pressed] | **BUTTON_RISING** *(Signal_Rising)* | entry / timer = 0 (en destino) |
| **BUTTON_RISING** *(Signal_Rising)* | `tick` | `[timer >= DEL_ENTRY_BTN && !pressed]` | **BUTTON_UP** *(Signal_UP)* | `EV_SYS_ENTRY_BTN_RELEASED` |
| **BUTTON_RISING** *(Signal_Rising)* | `tick` | [pressed] | **BUTTON_DOWN** *(Signal_DOWN)* | - |

