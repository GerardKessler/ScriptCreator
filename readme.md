# Script Creator:
Creado por Gerardo Késsler

<br>

## Introducción:
La idea de esta herramienta es brindar la posibilidad de crear scripts simples para resolver inconvenientes de accesibilidad en windows. Dentro del mundo de la programación, AutoHotkey facilita mucho la incursión a al código por su simpleza y su fácil aplicación.  
Básicamente se nos creará una plantilla de script donde podremos agregar coordenadas de pantalla, a las cuales podremos agregarle atajos de teclado para su fácil acceso. También podremos compilar el archivo en formato exe para su ejecución en un sistema que no cuente con el AutoHotkey instalado.

<br>

### Instrucciones:
Una vez ejecutado el script, va a crearse en la raíz del mismo, donde se encuentra el ScriptCreator.exe, un archivo llamado Coordenadas.ahk.
El mismo es un script en si mismo, ya que tiene un código base con un mensaje de inicio con NVDA, al igual que un atajo de teclado asignado para cerrarlo.  
Importante no modificar el órden de ningún archivo o carpeta de este script hasta no culminar con la creación de uno nuevo.  
Una vez abierto el ScriptCreator.exe, podremos comenzar a guardar las coordenadas de pantalla de la siguiente forma:  
En el caso de contar con ayuda visual, solicitaremos nos sitúen el puntero del mouse en la coordenada a la cual queremos agregarle un atajo de teclado. En el caso de hacerlo por nuestra propia cuenta, deberemos utilizar los comandos propios del lector de pantallas para situar el mouse en el lugar correcto.  
Una vez allí, podremos pulsar; control, alt, C. Lo que  nos activará una ventana gui donde podremos configurar algunas cosas referidas a esa coordenada.  

* Comando de teclado:  
Como su nombre lo indica, aquí podremos pulsar un atajo de teclado, el cual será asignado a la acción que verificaremos en el cuadro siguiente.

* Acción de Mouse:  
Aquí podremos definir que acción se realizará al pulsar el atajo configurado en el cuadro antrior. Enfocamos el deseado con flechas arriba y abajo, y el mismo quedará seleccionado al tabular a la próxima opción.

* Mensaje a través de NVDA:  
Este cuadro es opcional. Aquí podremos escribir un texto que será verbalizado por NVDA luego de ejecutar la acción configurada en el paso anterior.

* Descripción de la macro:  
Este cuadro también es opcional. En el mismo podremos escribir una pequeña descripción que será agregada en el código a modo de comentario, sobre todo pensado para los que luego revisen el código.

* Aceptar:  
Con este botón guardaremos los cambios, y cerraremos la ventana gui.

<br>

### Compilación del script:
Una vez terminado el script podremos compilarlo, es decir, transformar el archivo Coordenadas.ahk, en Coordenadas.exe. Este último contendrá el intérprete para poder ejecutarlo en sistemas sin el AutoHotkey instalado. Para ello pulsamos el atajo; control, shift, p.  
Si todo ha salido correctamente, deberíamos encontrar el archivo nuevoScript.exe junto a Coordenadas.ahk.
Para cerrar el Script general, lo podremos hacer con; control, shift, Q.

<br>

### Manipulación del nuevo script:
Felicitaciones, ya has realizado tu primer script. El mismo contará con los atajos asignados en su creación, como el atajo; Shift, escape, para cerrar el mismo.  
Es conveniente que cuando termines copies el archivo nuevoScript.exe, así como la carpeta Speak en una nueva carpeta a parte, con el nombre que desees.  
También es conveniente que elimines el archivo nuevoScript.exe de la carpeta del ScriptCreator, así como el Coordenadas.ahk.
De todas maneras, al cerrar el script general y volverlo a abrir en otro momento, si este encuentra un coordenadas.ahk preguntará si deseas reemplazarlo, o seguir trabajando con él.  

<br>

### Configuración de atajos del script:
Con el atajo shift, f1, se activará una lista con los atajos actuales del script.  
Para modificarlos tan solo hay que tabular y pulsar en la opción Modificar los atajos de teclado.
Una vez allí podremos ingresar un nuevo comando en cada cuadro, entre los cuales podremos movernos con el tabulador. Una vez finalizado hay que pulsar sobre el botón guardar los cambios.

<br>

###Resumen de atajos:

* Control, shift, c; Configura una nueva macro con la coordenada actual.
* Control, shift, p; Compila el archivo ahk en exe.
* Control, shift, q; Cierra el Script Creator.
* control, q; pausa y reanuda el script principal.
* Shift, f1; Abre la ventana con la lista de comandos.
* Shift, Escape; Cierra el nuevo script creado.

<br>

### Despedida:
Si desea reportar alguna falla, realizar alguna sugerencia, o simplemente agradecer el trabajo, lo pueden hacer a través del siguiente correo electrónico:  
<ReaperYOtrasYerbas@gmail.com>

<br>

Gerardo Késsler.