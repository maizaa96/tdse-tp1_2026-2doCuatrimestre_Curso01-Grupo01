### Descripciones de Eventos y Acciones del Modelo Actuator (Un solo LED):

>**Aclaración:** El actuador es un único LED, que modela la barrera subiendo, esperando arriba, y bajando.

Tendremos como eventos las señales que vienen de SYSTEM.

**Eventos:**

`EV_ACT_LED_OFF`

`EV_ACT_LED_ON`

`EV_ACT_LED_BLINK`

**Estados**

`ST_LED_OFF` Cuando la barrera está baja.

`ST_LED_ON` Cuando la barrera está totalmente arriba.

`ST_LED_BLINK` Cuando la barrera está subiendo o bajando.

Finalmente, en cuanto a **acciones** tenemos la señal eléctrica que será enviada al pin donde esté conectado el LED.

`EV_LED_PIN_HIGH` Para enviar un pulso al pin para prender el LED

`EV_LED_PIN_LOW` Para que el pulso que recibe baje a 0V y así se apague el LED.

>Para la implementación del BLINK planteamos un macro-estado, en donde el evento EV_ACT_LED_BLINK provoca la transición tanto de ST_LED_OFF y ST_LED_ON a ST_LED_BLINK. Dentro del macro estado se decrementa en 1 el tick siempre que este sea mayor a 0. Enviando las señales de PIN_HIGH y PIN_LOW según corresponda. Luego cuando ocurra el evento de EV_ACT_LED_ON o EV_ACT_LED_OFF según corresponda (acompañados de la guarda [tick <= 0]), saliendo así del macroestado.

### Tabla de Estados y Excitaciones del modelo Sensor

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **ST_LED_OFF** | `EV_ACT_LED_BLINK` | `` | **ST_LED_BLINK** | `` |
| **ST_LED_BLINK** | `EV_ACT_LED_ON` | `[tick <= 0]` | **ST_LED_ON** | `EV_LED_PIN_HIGH` |
| **ST_LED_ON** | `EV_ACT_LED_BLINK` | `` | **ST_LED_BLINK** | `EV_LED_PIN_LOW` |
| **ST_LED_BLINK** | `EV_ACT_LED_OFF` | `[tick <= 0]` | **ST_LED_OFF** | `EV_LED_PIN_LOW` |

### Tabla de Estados y Excitaciones del macro-estado Blink

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **Inicio** | `-` | `-` | **ST_LED_ON** | `/raise EV_LED_PIN_HIGH ; entry /tick--` |
| **ST_LED_ON** | `` | `[tick > 0]` | **ST_LED_OFF** | `/raise EV_LED_PIN_LOW ; entry /tick--` |
| **ST_LED_OFF** | `` | `[tick > 0]` | **ST_LED_ON** | `/raise EV_LED_PIN_HIGH ; entry /tick--` |
