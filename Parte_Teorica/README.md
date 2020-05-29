# INFORME TEÓRICO

REPRESENTACIÓN DEL CONOCIMIENTO

#### Alejandro Bueno Mañas y José Ramón López Garrido


## Índice

- Introducción
- Técnicas más utilizadas
   - Representación Lógica
      - Componentes en la representación lógica
      - Ventajas y desventajas de la representación lógica
   - Representación de redes semánticas
      - Componentes de una red semántica
      - Formas de representar una red semántica
      - Ventajas y desventajas del uso de redes semánticas
   - Reglas de producción
   - Representación de marcos
- Profundización sobre la representación lógica
   - Tipos de lógicas.
      - Lógica proposicional
      - Lógica de predicados
      - Lógicas no clásicas


## Introducción

¿Qué es representación del Conocimiento?

La representación del conocimiento en Inteligencia Artificial es, en pocas
palabras, una forma de representar información del mundo real mediante un
lenguaje simbólico, para que un ordenador pueda procesar y resolver
problemas complejos.

En este documento mencionaremos algunas de las técnicas más usadas para
llevar a cabo dicho proceso y profundizaremos en alguna de ellas.

## Técnicas más utilizadas

Dentro del campo de la inteligencia artificial, encontramos cuatro grandes
técnicas de representación del conocimiento, estas son:

- La representación lógica.
- Representación de redes semánticas
- Reglas de producción.
- Representación de marcos.

En este documento, se analizarán cada una de estas técnicas, así como se
profundizará más aún en una de ellas, la representación lógica, dada la gran
cantidad de contenido que hay detrás de dicha técnica.

### Representación Lógica

¿Qué es la lógica? Creo que es conveniente aclararlo antes de proseguir con su
uso dentro de la inteligencia artificial. La lógica es, a grandes rasgos, un
lenguaje representativo con ciertas reglas definidas, no ambiguo, y que nos
permite razonar con sentencias que pueden ser verdaderas o falsas.


#### Componentes en la representación lógica

Toda lógica que sea empleada como vía de representación, debe estar
constituida por tres elementos:

- Una **sintaxis** , que indica como construir los distintos elementos del
lenguaje en cuestión.
- Una **semántica** , que asocia los elementos mencionados anteriormente
con elementos reales del dominio, es decir, asocia estos elementos a
los símbolos.
- Un **conjunto de reglas de inferencia** , que permite deducir nuevo
conocimiento a partir del que ya tenemos.

#### Ventajas y desventajas de la representación lógica

Una vez aclarado el concepto de lógica en este ámbito, pasemos a describir
las ventajas e inconvenientes que conlleva el uso de esta técnica en el campo
de la inteligencia artificial.

| Ventajas | Desventajas |
| :------- | ----------: |
| Implementación mucho más
sencilla. | Numerosas restricciones que
pueden derivar en problemas a la
hora de trabajar con ella. |

| Si se sabe utilizar, es una        
herramienta muy potente. |

| Su uso no es muy extendido y
posee escasas áreas de aplicación. |


| Expresión simple y precisa de los
problemas. |


| En ocasiones, dependiendo del
problema que estemos tratando,
puede resultar muy ineficiente. |


### Representación de redes semánticas

La representación mediante redes semánticas se presenta como una buena
alternativa a la representación lógica. A grandes rasgos, se trata de una
representación que utiliza grafos o árboles (más adelante veremos cuando se
puede utilizar una y cuando la otra) y cuyo objetivo es elaborar una
infraestructura para generar datos que puedan ser comprendidos por la
computadora.

#### Componentes de una red semántica

Las redes semánticas están formadas esencialmente por dos componentes:

- **Nodos** : Representan objetos tangibles y/u objetos conceptuales
(eventos, hechos, etc.).
- **Arcos** : Representan asociaciones/relaciones entre distintos nodos de
la red. Dentro de estas asociaciones, encontramos algunas como:
ES_UN, PARTE_DE, CAUSA_DE, entre otras. También pueden
representar definiciones y características de nodos.

**Imagen 3.1** : Ejemplo de red semántica representada mediante un grafo


#### Formas de representar una red semántica

Como ya se comentó anteriormente, existen dos formas de representar una
red semántica, por un lado, se pueden representar mediante un **grafo** (Imagen
3.1) y por otro se pueden representar a través de un **árbol** (Imagen 3. 2 ). El
quid de la cuestión es, ¿cuándo se utiliza una y cuando otra? La respuesta es
sencilla.

No existe ningún tipo de restricción si se quiere representar una red
semántica mediante un grafo, sin embargo, si se quiere utilizar un árbol, la
red semántica debe cumplir ciertos requisitos, como:

- **No** deben existir **ciclos** (grafo acíclico).
- Ser **conexo** , esto es, que dos vértices cualesquiera deben estar
unidos por al menos un camino.

**Imagen 3. 2** : Ejemplo de red semántica representada mediante un árbol.

#### Ventajas y desventajas del uso de redes semánticas

Una vez se han analizado las características de las redes semánticas y se ha
aclarado sus formas de representación, pasemos a ver qué ventajas y qué
inconvenientes conllevan su uso para representar el conocimiento:


```
Ventajas Desventajas
Permiten la declaración de
importantes asociaciones, en forma
explícita.
```
```
Poca flexibilidad.
```
```
Son una forma natural de
representar el conocimiento.
```
```
Son más lentas en tiempo de
ejecución que otras técnicas.
Transmite el conocimiento de una
manera transparente.
```
```
No son muy adecuadas dada su
ausencia de cuantificadores
equivalentes.
Su representación es intuitiva y
fácil de entender para el usuario.
```
```
No son inteligentes, por tanto,
dependen en gran medida de su
```
**diseño inicial.**^

### Reglas de producción

Es una de las técnicas más antiguas y su uso se ha popularizado en áreas como
la medicina, en concreto para el diagnóstico de patologías médicas.

Esta técnica se conoce también como reglas “ **IF-THEN** ”, porque tienen 2
partes principales:

- La parte **SI** (IF) del **antecedente** o la **condición**.
- La parte **ENTONCES,** que se corresponde con la **consecuencia** , la
    **acción** o la **respuesta**.

Ejemplos:

```
➢ Si la temperatura corporal es superior o igual a 39ºC, entonces tienes
fiebre.
➢ Si un animal come carne entonces es carnívoro.
```

```
1 .- Ejemplo genérico de reglas de producción.
```
```
Ventajas Desventajas
Se puede implementar usando un
lenguaje más natural.
```
```
Resulta difícil la manipulación de
grandes conjuntos de reglas.
Es modular, puesto que cada regla
es una porción de conocimiento
independiente.
```
```
No todos los métodos de resolución
de problemas humanos se
representan fácilmente.
Para modificar el conocimiento,
solo hay que añadir eliminar reglas.
```
```
Pueden activarse varias reglas a la
vez, lo que hace necesario una
estrategia de control.
```
### Representación de marcos

Los marcos son una forma de representar la información de manera ordenada
utilizando unidades de información complejas denominadas marcos o slots.

Estos marcos suelen contener una colección de atributos y relaciones con
otros marcos.

Normalmente los marcos suelen ser Clases.


**Ejemplo:**

```
Ventajas Desventajas
Son fáciles de programar. El mecanismo de inferencia no se procesa fácilmente.
La representación es fácil de
entender y visualizar. Tiene un enfoque muy genérico.^
Se puede incluir datos por defectos
para cuando la búsqueda tiene
información omitida.
```
```
2 .- Marco para coches de Alquiler
```

## Profundización sobre la representación lógica

Anteriormente se describieron las principales características y componentes
de la representación lógica, sin embargo, dado su amplio contenido, se ha
considerado oportuno ampliar el análisis sobre esta técnica.

### Tipos de lógicas.

Lógicas de orden, dentro de estas lógicas podemos encontrar:

- Lógica proposicional.
- Lógica de predicados.
- Lógicas no clásicas.
    o Multivaluadas (Fuzzy Logic).
    o Modales.

#### Lógica proposicional

La lógica proposicional estudia proposiciones, afirmaciones u oraciones, los
métodos de vincularlas mediante conectores lógicos y las relaciones y
propiedades que se derivan de esos procedimientos.

Es una herramienta útil para razonar, sin embargo, es incapaz de resolver
problemas que requieran el análisis de la estructura interna de las
proposiciones o bien de las relaciones entre ellas.

**_¿Qué es una proposición?_**

Antes de nada, pasemos a explicar que son las **proposiciones**. En pocas
palabras, son enunciados aseverativos, es decir, enunciados que solo pueden
tener dos valores: **verdadero** o **falso** , y nunca ambos a la vez. Algunos
ejemplos de proposiciones serían:

- Un año tiene 12 meses **→ Verdadero**
- 2 + 2 = 1 **→ Falso**


Como se puede observar, también pueden existir proposiciones que describan
una expresión matemática.

**_Representación_**

Para representar este tipo de lógica, se suele asignar letras o identificadores a
cada proposición. Un identificador solo puede estar asociado a una
proposición, si se quiere elaborar una estructura más compleja se utilizan
palabras conectivas lógicas (“y”, “o”, “si”, “entonces”, etc.). A continuación,
se detalla un ejemplo para una mayor comprensión:

A **→** El cielo es azul.

B **→** Mi coche es negro.

¬ A **→** El cielo **NO** es azul.

¬ B **→** Mi coche **NO** es negro.

Pero si, por ejemplo, se quisiese expresar una proposición compuesta por
ambas, se tendría que utilizar la siguiente sintaxis:

```
A ∧ B → El cielo es azul Y mi coche es negro.
```
```
A ∨ B → El cielo es azul O mi coche es negro.
```
Sin embargo, esto solo es una pequeña parte de la complejidad de su
representación, aun así, esta es la base sobre la que se asienta dicha
representación.

#### Lógica de predicados

La lógica de predicados es un sistema formal diseñado para estudiar la
inferencia en los lenguajes de primer orden. Los lenguajes de primer orden
son, a su vez, lenguajes formales con cuantificadores que alcanzan solo a
variables de individuo, y con predicados y funciones cuyos argumentos son
solo constantes o variables de individuo.

La lógica de primer orden tiene un poder expresivo muy superior al de la
lógica proposicional.


Alfabeto típico para lenguaje de primer orden (Predicados).

Un predicado es una expresión lingüística que se puede conectar con una o
varias otras expresiones para formar una oración

Una constante de individuo es una expresión lingüística que refiere a una
entidad.

Una variable de individuo es como una constante, pero no está determinada.

Un cuantificador es un operador sobre un conjunto de individuos.

Ejemplos:

- Toda ave tiene alas y plumas.

```
➢ (∀x) (Av(x) →Al(x) ∧Pl(x))
```
- Existen aves que no vuelan.

```
➢ (∃x) (Av(x) ∧¬V(x))
```
#### Lógicas no clásicas

Una lógica no clásica o lógica alternativa es un sistema formal que difiere de
manera significativa de las lógicas clásicas. Hay varias formas de hacerlo,
incluyendo a modo de extensiones, desviaciones, y variaciones, por ejemplo,
rechazando uno o varios de los principios de la lógica clásica. El objetivo de
estas desviaciones es para hacer posible construir distintos modelos de
consecuencia y verdad lógica.


Algunos ejemplos de lógicas no clásicas son:

**Lógica difusa** : Es una lógica plurivalente que rechaza el principio del tercero
excluido y propone un número infinito de valores de verdad.

**Lógica relevante** : Es una lógica paraconsistente que evita el principio de
explosión al exigir que para que un argumento sea válido, las premisas y la
conclusión deben compartir al menos una variable proposicional.

**Lógica cuántica** : Desarrollada para lidiar con razonamientos en el campo de
la mecánica cuántica; su característica más notable es el rechazo de la
propiedad distributiva.

**Lógica no monotónica** : Una lógica no monotónica es una lógica donde, al
agregar una fórmula a una teoría cualquiera, es posible que el conjunto de
consecuencias de esa teoría se reduzca.

**Lógica intuicionista** : Enfatiza las pruebas, en vez de la verdad, a lo largo de
las transformaciones de las proposiciones.