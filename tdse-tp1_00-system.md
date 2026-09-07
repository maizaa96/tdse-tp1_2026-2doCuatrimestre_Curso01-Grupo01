### Descripciones de Eventos y Acciones del Modelo System:

Si seguimos trabajando con la modalidad "Update by Time Code" de 1ms, tendremos como único evento el vencimiento de dicho Tick de 1ms.


**Eventos:**


`tick`


Y nuestras **[guardas]** serán las acciones del módulo anterior (Sensor):


`EV_SYS_ENTRY_BTN_PRESSED`

`EV_SYS_ENTRY_BTN_RELEASED`


**Estados**


`ST_SYSTEM_IDLE`


>Consultar si no habría que agregar un SYSTEM_PROCESSING que sirva como estado mientras el sistema está activamente procesando una acción, y que SYSTEM_ACTIVE esté activa una vez que el sistema ya completó la acción y está aguardando el accionar del usuario.


`ST_SYSTEM_ACTIVE`


Podemos definir dos estados principales, uno cuando el sistema está esperando recibir un evento, y otro cuando el sistema está activamente procesando información. Se está constantemente cada 1ms evaluando la guarda, para ver si el botón fue presionado o no, y se transiciona de IDLE a ACTIVE al verificarse la guarda.


Por último, tenemos las acciones que System enviará a los actuadores, si consideramos que por ahora modelamos a estos como LED's, System enviará únicamente una señal de encender o apagar el LED.


`EV_ACT_LED_ON`


`EV_ACT_LED_OFF`


>`EV_ACT_LED_BLINK` y `EV_ACT_LED_PULSE` puede que sean usados más adelante.

### Tabla de Estados y Excitaciones del modelo System

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **ST_SYSTEM_IDLE** | `tick` | `[EV_SYS_ENTRY_BTN_PRESSED]` | **ST_SYSTEM_ACTIVE** | `EV_ACT_LED_ON` |
| **ST_SYSTEM_ACTIVE** | `tick` | `[EV_SYS_ENTRY_BTN_RELEASED]` | **ST_SYSTEM_IDLE** | `EV_ACT_LED_OFF` |
