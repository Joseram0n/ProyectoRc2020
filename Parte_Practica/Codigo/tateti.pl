% Codigo obtenido de: La Web Del Programador, Autor: Guido Franzini

% Juego del Tres en Raya (Tateti).

% Importante -> La ficha X es el ordenador, la ficha O es el usuario.

% Estas dos primeras líneas permite que en tiempo de ejecución se
% agreguen predicados x(ALGO) y o(ALGO) que son fundamentales para
% llevar el estado del juego.

:- dynamic x/1.
:- dynamic o/1.

% Definición de lo que es un lugar ocupado y uno libre.

ocupado(L):- x(L).
ocupado(L):- o(L).
libre(L):- not(ocupado(L)).

% Posibles lugares para hacer tres en raya
% Interpretar el tablero como
% 123
% 456
% 789
% Siendo los números las posiciones que
% se corresponden con las casilla del tablero

trio(1,5,9).
trio(1,4,7).
trio(3,5,7).
trio(4,5,6).
trio(1,2,3).
trio(7,8,9).
trio(2,5,8).
trio(3,6,9).

% Tateti es un trio con las fichas del mismo jugador

tateti:- trio(A,B,C),x(A),x(B),x(C).
tateti:- trio(A,B,C),o(A),o(B),o(C).

% El empate es cuando todos los espacios quedan ocupados (y no hay
% tateti)
lleno:- ocupado(1),ocupado(2),ocupado(3),ocupado(4),ocupado(5),ocupado(6),ocupado(7),ocupado(8),ocupado(9).
empate:- lleno, not(tateti).

% Situaciones con respecto a la maquina y el juego
% Desventaja es cuando el usuario puso 2 fichas juntas y hay
% espacio para la tercera. Evalua el espacio donde tiene que jugar para
% no perder.

desventaja(L):- trio(A,B,L),o(A),o(B),libre(L).
desventaja(L):- trio(A,L,B),o(A),o(B),libre(L).
desventaja(L):- trio(L,A,B),o(A),o(B),libre(L).

% Ventaja es cuando la maquina puso dos fichas juntas y tiene espacio
% para la tercera, la pone y gana. Evalua el espacio de la victoria.

ventaja(L):- trio(A,B,L),x(A),x(B),libre(L).
ventaja(L):- trio(A,L,B),x(A),x(B),libre(L).
ventaja(L):- trio(L,A,B),x(A),x(B),libre(L).

% Defender va tratando de ocupar las filas antes de que se llegue a una
% situacion de desventaja.

defender(L):- trio(A,B,L),o(A),libre(B),libre(L).
defender(L):- trio(A,L,B),o(A),libre(B),libre(L).
defender(L):- trio(L,A,B),o(A),libre(B),libre(L).

% Atacar va a empezar a juntar fichas para luego hacer tateti. Evalua el
% lugar para hacer la jugada.

atacar(L):- trio(A,B,L),x(A),libre(B),libre(L).
atacar(L):- trio(A,L,B),x(A),libre(B),libre(L).
atacar(L):- trio(L,A,B),x(A),libre(B),libre(L).

% Jugada indiferente, devuelve una posicion para jugar si no se cumple el resto

indiferente(5):- libre(5).
indiferente(1):- libre(1).
indiferente(2):- libre(2).
indiferente(3):- libre(3).
indiferente(4):- libre(4).
indiferente(6):- libre(6).
indiferente(7):- libre(7).
indiferente(8):- libre(8).
indiferente(9):- libre(9).

% Movimiento de la maquina, toma 1 lugar y se agrega con assert como hecho.
% Referencia sobre assert y retract: http://www.dcc.uchile.cl/~peortega/guiaprolog/leccion3.html

movimiento_pc:- lugar_elegido(L),assert(x(L)).

% Los predicados lugar_elegido se encuentran en orden lógico ya que al
% funcionar como un or lo primero que queremos que ocurra es ganar si se
% puede, o impedir que el otro gane y en ultimo caso simplemente poner
% una ficha

lugar_elegido(L):- ventaja(L).
lugar_elegido(L):- desventaja(L).
lugar_elegido(L):- defender(L).
lugar_elegido(L):- atacar(L).
lugar_elegido(L):- indiferente(L).

% Limpia todo los hechos insertados con assert.

limpiar:- retractall(x(_)),retractall(o(_)).

% Predicados de interfaz

%Jugada del humano
%
lugar_valido(L):- L>0, L<10, libre(L).
lugar_valido(L):- L>0, L<10, not(libre(L)),nl,write('ERROR MOVIMIENTO INVALIDO, EMPIEZE DE NUEVO'),nl,abort.
lugar_valido(L):- L<0,nl,write('ERROR MOVIMIENTO INVALIDO, EMPIEZE DE NUEVO'),nl,abort.
lugar_valido(L):- L>10,nl,write('ERROR MOVIMIENTO INVALIDO, EMPIEZE DE NUEVO'),nl,abort.

movimiento_humano:- write('Indique la posicion [1-9] '), read(L), lugar_valido(L), assert(o(L)).


%Imprime la ficha de un lugar
imp_l(L):- x(L), write('x').
imp_l(L):- o(L), write('o').
imp_l(L):- libre(L), write(L).

separador:- write('----------').

%Imprime el tablero
imp_tablero:- separador,nl,imp_l(1),write('|'),imp_l(2),write('|'),imp_l(3),
                nl,imp_l(4),write('|'),imp_l(5),write('|'),imp_l(6),
                nl,imp_l(7),write('|'),imp_l(8),write('|'),imp_l(9),nl.

%Fin del juego
fin_humano:- tateti,write('Tateti - Maquina'),nl.
fin_humano:- empate,write('Empate'),nl.

fin_pc:- tateti,write('Tateti - Humano'),nl.
fin_pc:- empate,write('Empate'),nl.

%Show must go on!

start:- limpiar,jugar_humano.
start_pc:- limpiar,jugar_pc.

% Jugada humano
jugar_humano:- fin_humano.
jugar_humano:- movimiento_humano,imp_tablero,jugar_pc.
%jugar_humano:- not(movimiento_humano),jugar_humano.

% Juagada Maquina
jugar_pc:- fin_pc.
jugar_pc:- movimiento_pc,imp_tablero,jugar_humano.












