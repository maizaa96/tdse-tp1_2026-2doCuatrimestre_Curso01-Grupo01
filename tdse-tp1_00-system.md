### Descripciones de Eventos y Acciones del Modelo System:

Tenemos como única variable el tick, que es una variable de tipo entero a la que asociaremos el valor de 2000ms cuando la barrera suba y baja, para ir decrementandola hasta llegar a 0.


**Eventos:**

`EV_SYS_CAM_BTN_PRESSED`

>`EV_SYS_BTN_CAM_IDLE` Este no será utilizado. No genera ningún cambio de estado en el sistema.

>`EV_SYS_BTN_COIL_ACTIVE` Este no será utilizado, ya que el estado del coil en System es activado por el vencimiento de un tick. Solo nos interesa ver cuándo el coil deja de sensar, es decir, cuando vuelve a estar Idle, ya que será esa señal la que excita la transición hacia BARRIER_FALLING.

`EV_SYS_BTN_COIL_IDLE`

`EV_SYS_ENTRY_BTN_PRESSED`

>`EV_SYS_ENTRY_BTN_RELEASED` Este no será utilizado y no genera ningún cambio de estado en el sistema.

**Estados**


`ST_SYS_IDLE` Activo mientras el sistema no esté recibiendo estimulos activamente, es decir, no hay un auto presente.

`ST_SYS_CAM_ACTIVE` Activo mientras la cámara esté sensando la presencia de un auto. Se inicializa el tick en 2000. Una vez que se reciba como evento el presionamiento del botón de entrada, comenzará a subir la barrera (LED_BLINK), y se transicionará al estado siguiente.

`ST_SYS_BARRIER_RISING` Activo mientras la barrera esté activamente subiendo, en este estado se decrementa el tick iterativamente hasta llegar a 0, momento en que la barrera ya habrá frenado en su punto máximo. Una vez ocurra esto, se activará la guarda de [tick==0] y transicionaremos al siguiente estado, enviando la señal al actuador de LED_ON.

`ST_SYS_COIL_ACTIVE` Activo mientras el coil esté sensando una diferencia en su campo magnético respecto a lo normal, lo que indica la presencia de un auto. En este estado se inicializa nuevamente el tick en 2000. Cuando llegue el evento de COIL_IDLE, esto implicará que el auto avanzó, por lo que transiciona al siguiente estado y se envia la señal al LED para que titile nuevamente, ya que la barrera bajará.

`ST_SYS_BARRIER_FALLING` Activo mientras la barrera esté activamente bajando. En este estado se reduce el tick iterativamente en 1, hasta que al llegar a 0 se activa la guarda [tick==0], habilitando la transición nuevamente a ST_SYS_IDLE, enviando al actuador la señal de LED_OFF.

**Acciones:**

`EV_ACT_LED_ON` Cuando la barrera esté en su punto máximo, el LED estará encencido.


`EV_ACT_LED_OFF` Cuando el sistema esté en IDLE, es decir, que no hay un auto esperando para ingresar, el LED estará apagado.


`EV_ACT_LED_BLINK` Cuando la barrera esté activamente subiendo o bajando, el LED estará parpadeando.

### Tabla de Estados y Excitaciones del modelo System

## Tabla de Estados y Excitaciones del modelo System (Corregida)

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **ST_SYS_IDLE** | `EV_SYS_CAM_BTN_PRESSED` |`-` | **ST_SYS_CAM_ACTIVE** | `entry/ tick = 2000` |
| **ST_SYS_CAM_ACTIVE** | `EV_SYS_ENTRY_BTN_PRESSED` |`-` | **ST_SYS_BARRIER_RISING** | `EV_ACT_LED_BLINK ; entry/ tick--`|
| **ST_SYS_BARRIER_RISING** | `-` | `[tick>0]` | **ST_SYS_BARRIER_RISING** | `entry/ tick--` |
| **ST_SYS_BARRIER_RISING** | `-` | `[tick==0]` | **ST_SYS_COIL_ACTIVE** | `entry/ tick-- ; /raise EV_ACT_LED_ON` |
| **ST_SYS_COIL_ACTIVE** | `EV_SYS_BTN_COIL_IDLE` | `-` | **ST_SYS_BARRIER_FALLING**| `EV_ACT_LED_BLINK` |
| **ST_SYS_BARRIER_FALLING**| `tick` | `[tick == 0]` | **ST_SYS_IDLE** | `EV_ACT_LED_OFF` |
