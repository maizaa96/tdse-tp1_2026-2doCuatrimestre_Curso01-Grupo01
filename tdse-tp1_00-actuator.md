### Descripciones de Eventos y Acciones del Modelo Actuator (Un solo LED):

>**Aclaración:** Esto está hecho considerando que por ahora nuestro único actuador es un único LED que se prende y se apaga, no blinkea ni ejecuta un pulso.

Seguimos trabajando con la modalidad "Update by Time Code" de 1ms, así que nuevamente tendremos como único evento el vencimiento de dicho Tick de 1ms.

**Eventos:**


`tick`


Y nuestras **[guardas]** serán las acciones del módulo anterior (System):


`EV_ACT_LED_ON`

`EV_ACT_LED_OFF`

**Estados**


`ST_LED_OFF`

`ST_LED_ON`

>`ST_LED_BLINK` y `ST_LED_PULSE` puede que sean usados más adelante.

Finalmente, en cuanto a **acciones** tenemos la señal eléctrica que será enviada al pin donde esté conectado el LED.

`EV_LED_PIN_HIGH`

`EV_LED_PIN_LOW`


### Tabla de Estados y Excitaciones del modelo Sensor

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **LED_OFF** | `tick` | `[EV_ACT_LED_ON]` | **LED_ON** | `LED_PIN_HIGH` |
| **LED_ON** | `tick` | `[EV_ACT_LED_OFF]` | **LED_OFF** | `LED_PIN_LOW` |

>**Nota:** Creemos que no es necesario tener estados intermedios en este caso puesto que la señal no tendría por qué tener ruido, es binaria, no proviene de una lectura de un pin sino de una señal generada por System en un proceso interno.
