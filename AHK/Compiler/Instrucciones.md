# Script Creator:
Creado por Gerardo Késsler

<br>

## Introducción:
La idea de esta herramienta es brindar la posibilidad de crear scripts simples, para resolver inconvenientes de accesibilidad en windows. Dentro del mundo de la programación, AutoHotkey facilita mucho la incursión a al código por su simpleza y su fácil aplicación.  
Básicamente se nos creará una plantilla de script, donde podremos agregar coordenadas de pantalla a las cuales podremos agregarle atajos de teclado para su fácil acceso, pudiendo compilar el archivo en formato exe, para su ejecución en un sistema que no cuente con el AutoHotkey instalado.

<br>

### Instrucciones:
Una vez ejecutado el script, va a crearse en la raíz del mismo, donde se encuentra el ScriptCreator.exe, un archivo llamado Coordenadas.ahk.
El mismo es un script en si mismo, ya que tiene un código base con un mensaje de inicio con NVDA, al igual que un atajo de teclado asignado para cerrar el mismo. 
Importante no modificar el órden de ningún archivo o carpeta de este script hasta no culminar con la creación de uno nuevo.  
Una vez abierto el ScriptCreator.exe, podremos comenzar a guardar las coordenadas de pantalla de la siguiente forma:  
En el caso de contar con ayuda visual, solicitaremos nos sitúen el puntero del mouse en la coordenada a la cual queremos agregarle un atajo de teclado. En el caso de hacerlo por nuestra propia cuenta, deberemos utilizar los comandos propios del lector de pantallas para situar el mouse en el lugar correcto.  
Una vez allí, podremos pulsar Windows, C. El cual nos activará una ventana gui donde podremos configurar algunas cosas referidas a esa coordenada.  

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

### Revisando el código:
Una vez configuradas nuestras macros, es conveniente revisar el archivo Coordenadas.ahk, para verificar que los atajos de teclado hayan sido asignados correctamente. Para ello podremos utilizar el block de notas incluído en Windows. 
En la línea 13 encontraremos un texto de comentario llamado macros, el cual es ignorado por el intérprete. Luego del mismo, se situarán los bloques de código que corresponden a cada una de esas macros.  
En la primer línea de cada uno de esos bloques de código se encontrará la configuración del atajo de teclado. Si se ha guardado correctamente, antes de los dos pares de dos puntos, debería estar él, o los signos que representan el atajo de teclado.  
En el caso de no tener los signos correspondientes, podremos asignarlos manualmente de la siguiente forma:  
El acento sircunflejo representa a la tecla Control. Lo podemos escribir con Shift acento agudo, y luego la barra espaciadora.  
El shift, es representado por el signo más.  
La tecla Alt, es representada por el signo Cerrar admiración.  
La tecla Windows por el signo numeral, el que puede imprimirse con el atajo Alt, control, 3 alfanumérico. Todo esto con la distribución de español de españa.  

<br>

Ejemplos:
***

* ^p:: Es igual a Control p.
* +k:: Es igual a Shift k.
* !s:: Es igual a Alt, s.
* ^!j:: Es igual a Control, alt, j.

***

<br>

### Compilación del script:
Una vez revisado el script podremos compilarlo, es decir, transformar el archivo Coordenadas.ahk, en Coordenadas.exe. Este último contendrá el intérprete para poder ejecutarlo en sistemas sin el AutoHotkey instalado. Para ello pulsamos el atajo; Windows, o. En el caso de que no se ejecute la primera vez, repetimos el atajo.  
Se va a abrir unos segundos la línea de comandos, y va a realizarse la compilación. Si todo ha salido correctamente, deberíamos encontrar el archivo Coordenadas.exe junto al, Coordenadas.ahk.
Para cerrar el Script general, lo podremos hacer con; Alt,Q.

<br>

### Manipulación del nuevo script:
Felicitaciones, ya has realizado tu primer script. El mismo contará con los atajos asignados en su creación, como el atajo; Shift, escape, para cerrar el mismo.  
Es conveniente que cuando termines, copies el archivo coordenadas.exe, así como la carpeta Speak en una nueva carpeta a parte, con el nombre que desees, para poder ejecutarlo en otro sistema.  
También es conveniente que elimines el archivo Coordenadas.exe de la carpeta del ScriptCreator, así como el Coordenadas.ahk.
De todas maneras, al cerrar el script general y volverlo a abrir en otro momento, si este encuentra un coordenadas.ahk preguntará si deseas reemplazarlo, o seguir trabajando con él.  

<br>

###Resumen de atajos:

* Windows, c; Configura una nueva macro con la coordenada actual.
* Windows, O; Compila el archivo ahk en exe.
* Alt, Q; Cierra el Script Creator.
* Shift, Escape; Cierra el script creado.

<br>

### Despedida:
Si desea reportar alguna falla, realizar alguna sugerencia, o simplemente agradecer el trabajo, lo pueden hacer a través del siguiente correo electrónico:  
<ReaperYOtrasYerbas@gmail.com>

<br>

Gerardo Késsler.