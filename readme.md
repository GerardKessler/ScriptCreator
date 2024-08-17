# Script Creator:

Creado por Gera Kessler <gera.ar@yahoo.com>

## Introducción:

La idea de esta herramienta es brindar la posibilidad de crear scripts simples para resolver inconvenientes de accesibilidad en windows.

Básicamente se nos creará una plantilla de script donde podremos agregar coordenadas de pantalla, a las cuales podremos agregarle atajos de teclado para su fácil acceso. También podremos compilar el archivo en formato exe para su ejecución en un sistema que no cuente con el AutoHotkey instalado.

### Instrucciones:

Una vez ejecutado el script, va a crearse en la raíz del mismo, donde se encuentra el ScriptCreator.exe, un archivo llamado Coordenadas.ahk.
El mismo es el código fuente de un script en si mismo, ya que tiene un código base con un mensaje de inicio con NVDA, al igual que un atajo de teclado asignado para cerrarlo.  
Una vez abierto el ScriptCreator.exe, podremos comenzar a guardar las coordenadas de pantalla de la siguiente forma:  

* Mover el puntero del mouse a la posición buscada
* Pulsar el comando control + shift + c para activar la interfaz de configuración de la coordenada

Opciones que se muestran en la interfaz:

Nombre:  
El nombre del archivo ejecutable resultante al compilar.

Comando de teclado:  
Aquí podremos pulsar un atajo de teclado, el cual será asignado a la acción que verificaremos en el cuadro siguiente.

Acción de Mouse:  
Aquí podremos definir que acción se realizará al pulsar el atajo configurado en el cuadro antrior.

Mensaje a través de sapi:  
Este cuadro es opcional. Aquí podremos escribir un texto que será verbalizado por sapi luego de ejecutar la acción configurada en el paso anterior.

Descripción de la macro:  
Este cuadro también es opcional. En el mismo podremos escribir una pequeña descripción que será agregada en el código a modo de comentario, sobre todo pensado para los que luego revisen el código.

Aceptar:  
Con este botón guardaremos los cambios, y cerraremos la ventana gui.

### Compilación del script:

Una vez terminado el script podremos compilarlo, es decir, transformar el archivo Coordenadas.ahk, en un archivo ejecutable.
Este último contendrá el intérprete para poder ejecutarlo en sistemas sin el AutoHotkey instalado. Para ello pulsamos el atajo:

    control + shift + p.  

Si todo ha salido correctamente, deberíamos encontrar el archivo con el nombre asignado y la extensión exe en la carpeta del script.

Para cerrar el Script general, lo podremos hacer con el atajo:

    control+ shift+ q

### Manipulación del nuevo script:

Felicitaciones, ya has realizado tu primer script. El mismo contará con los atajos asignados en su creación, así como el atajo preasignado para cerrarlo:

    shift + escape

### Configuración de atajos del script:

Con el atajo shift, f1, se activará una lista con los atajos actuales del script.  
Para modificarlos tan solo hay que tabular y pulsar en la opción Modificar los atajos de teclado.
Una vez allí podremos ingresar un nuevo comando en cada cuadro, entre los cuales podremos movernos con el tabulador. Una vez finalizado hay que pulsar sobre el botón guardar los cambios.

###Resumen de atajos:

* control+ shift+ c; Configura una nueva macro con la coordenada actual.
* control + shift+ p; Compila el archivo ahk en exe.
* control+ shift+ q; Cierra el Script Creator.
* control + q; pausa y reanuda el script principal.
* shift+ f1; Abre la ventana con la lista de comandos.
* shift+ Escape; Cierra el nuevo script creado.
