% Obtenido de: https://github.com/DonaldKellett/Einsteins-Riddle-Prolog

% El acertijo de la cebra es un rompecabezas de lógica muy conocido, exsisten muchas versiones, una de ellas es
% la que fue publicada en la revista Life International del 17 de diciembre de 1962.
% Fuente: https://es.wikipedia.org/wiki/Acertijo_de_la_cebra

% Modelado del problema :
% - Cada casa esta represendata por el predicado house/5
% - Las 5 casas son modeladas como una lista de house(Color, Nationality, Pet, Beverage, Cigaret) en la variable Houses
% - El predicado solve/2 es el que resuelve el problema, WaterDrinker es la nacionalidad de la persona que bebe agua y ZerbraOwner es la nacionalidad de la persona que tiene la cebra como mascota

% Solucion Esperada:
% WaterDrinker = norwegian, ZebraOwner = japanese.

% adjacent/3 - Una funcion de ayuda para expresar de forma directa la relacion "junto a" en una lista.
% adjacent(A, B, List) para indicar que A ala izquierda de B o A esta a la derecha de B en una lista.
adjacent(A, B, List) :- nextto(A, B, List); nextto(B, A, List).

% solve/2 - Predicado principal para resolver el acertijo
solve(WaterDrinker, ZebraOwner) :-
  length(Houses, 5),                                                          % 1. Hay cinco casas.
  member(house(red, english, _, _, _), Houses),                               % 2. El Ingles vive en la casa roja.
  member(house(_, spanish, dog, _, _), Houses),                               % 3. La mascota del español es un perro.
  member(house(green, _, _, coffee, _), Houses),                              % 4. La persona de la casa verde bebe cafe.
  member(house(_, ukrainian, _, tea, _), Houses),                             % 5. El Ucraniano bebe te.
  nextto(house(ivory, _, _, _, _), house(green, _, _, _, _), Houses),         % 6. La casa verde está justo al lado derecho de la casa color marfil.
  member(house(_, _, snail, _, old_gold), Houses),                            % 7. El fumador de The Old Gold tiene caracoles.
  member(house(yellow, _, _, _, kools), Houses),                              % 8. El fumador de Kools vive en la casa amarilla.
  nth1(3, Houses, house(_, _, _, milk, _)),                                   % 9. El hombre que vive en la casa del centro bebe leche.
  nth1(1, Houses, house(_, norwegian, _, _, _)),                              % 10. El noruego vive en la primera casa.
  adjacent(house(_, _, _, _, chesterfields), house(_, _, fox, _, _), Houses), % 11. El fumador de Chesterfields vive al lado del vecino que tiene un zorro.
  adjacent(house(_, _, _, _, kools), house(_, _, horse, _, _), Houses),       % 12. El fumador de Kools vive al lado del vecino que tiene un caballo.
  member(house(_, _, _, orange_juice, lucky_strike), Houses),                 % 13. El fumador de Lucky Strike toma zumo de naranja.
  member(house(_, japanese, _, _, parliaments), Houses),                      % 14. El japonés fuma Parliaments.
  adjacent(house(_, norwegian, _, _, _), house(blue, _, _, _, _), Houses),    % 15. El noruego vive al lado de la casa azul.
  member(house(_, WaterDrinker, _, water, _), Houses),                        % Quien (WaterDrinker) bebe agua?
  member(house(_, ZebraOwner, zebra, _, _), Houses).                          % Quien (ZebraOwner) tiene a una cebra como mascota?