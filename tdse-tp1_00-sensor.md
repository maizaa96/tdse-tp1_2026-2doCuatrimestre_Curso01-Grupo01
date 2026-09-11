### Descripciones de Eventos y Acciones del Modelo Sensor (Pulsador):

El módulo sensor no es el botón en si mismo, sino que es el módulo del código en C encargado de procesar las señales que llegan por el uso del botón.

Primeramente, si definimos a un evento como un suceso con una probabilidad distinta de cero de ocurrir en algún momento dado, entonces podemos identificar
dos eventos principales a la hora de trabajar con un botón (específicamente con el botón de entrada):

Por un lugar, tenemos el evento: "Botón de entrada presionado" == "event => `EV_ENTRY_BTN_PRESSED`"

Por otro lado, tenemos el evento: "Botón de entrada no presionado" == "event => `EV_ENTRY_BTN_NOT_PRESSED`"

Estados: 
| Estado (Nomenclatura original) | Nuestra nomenclatura | Descripción / Notas |
| :--- | :--- | :--- |
| `ST_BUTTON_UP` | `Signal_UP` | Botón en estado alto (liberado) |
| `ST_BUTTON_DOWN` | `Signal_DOWN` | Botón en estado bajo (presionado) |
| `ST_BUTTON_Rising` | `Signal_Rising` | Flanco de subida del botón |
| `ST_BUTTON_Falling` | `Signal_Falling` | Flanco de bajada del botón |

> **Nota:** Esta diferenciacion de nomenclatura la usamos momentaneamente para entender mejor el funcionamiento de los estados. Usamos entonces `Signal` en lugar de `Button` para diferenciar fácilmente las señales lógicas de los eventos físicos.

Una vez que ya tengo un estado, comunico mediante una acción (es decir, una señal) el estado actual a System. Al confirmar la entrada a BUTTON_DOWN o BUTTON_UP, se emiten las señales EV_SYS_ENTRY_BTN_PRESSED y EV_SYS_ENTRY_BTN_RELEASED respectivamente. Los estados transitorios (BUTTON_FALLING y BUTTON_RISING) no emiten señales al módulo System, ya que no es información útil para este, que solo requiere saber si está presionado o no. 

En primer lugar, definimos tick como una variable entera. El estado natural del boton antes de ser presionado es ST_BUTTON_UP, en este estado se establece un valor para la variable tick, este valor sera utilizado como un delay, para evitar procesar los glitches como un boton presionado.

Luego, si llega el evento de que esta presionado, pasamos al estado intermedio ST_BUTTON_FALLING. Dentro de este evento, se itera reduciendo en 1 el tick. Si resulto ser un glitch y llega el evento EV_NAME_BTN_NOT_PRESSED, se vuelve a ST_BUTTON_UP. Si esto no ocurre, se sigue iterando hasta que el tick llega a 0, activando la guarda de transicion al ST_BUTTON_DOWN y enviando la señal EV_SYS_ENTRY_BTN_PRESSED a System. Luego, hago lo mismo para ST_BUTTON_DOWN, estableciendo el tick en 10. Posteriormente, si ocurre EV_NAME_BTN_NOT_PRESSED pasamos a ST_BUTTON_RISING, donde se itera reduciendo el tick. En caso de que se reciba EV_NAME_BTN

### Tabla de Estados y Excitaciones del modelo Sensor

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **ST_BUTTON_UP** *(Signal_UP)* | `` | [pressed] | **ST_BUTTON_FALLING** *(Signal_Falling)* | entry / timer = 0 (en destino) |
| **ST_BUTTON_FALLING** *(Signal_Falling)* | `tick` | `[timer >= DEL_ENTRY_BTN && pressed]` | **ST_BUTTON_DOWN** *(Signal_DOWN)* | `EV_SYS_ENTRY_BTN_PRESSED` |
| **ST_BUTTON_FALLING** *(Signal_Falling)* | `tick` | [!pressed] | **ST_BUTTON_UP** *(Signal_UP)* | - |
| **ST_BUTTON_DOWN** *(Signal_DOWN)* | `tick` | [!pressed] | **ST_BUTTON_RISING** *(Signal_Rising)* | entry / timer = 0 (en destino) |
| **ST_BUTTON_RISING** *(Signal_Rising)* | `tick` | `[timer >= DEL_ENTRY_BTN && !pressed]` | **ST_BUTTON_UP** *(Signal_UP)* | `EV_SYS_ENTRY_BTN_RELEASED` |
| **ST_BUTTON_RISING** *(Signal_Rising)* | `tick` | [pressed] | **ST_BUTTON_DOWN** *(Signal_DOWN)* | - |

