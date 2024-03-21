%parents information           
  parent(obambo,wesonga).
  parent(obambo,wasike).
  parent(wasike,obambo1).
  parent(wasike,wesonga1).
  parent(tabu,obambo1).
  parent(tabu,wesonga1).
  parent(wesonga1,ojambo).
  parent(wesonga1,wafulaD).
  parent(achola,wafulaD).
  parent(achola,ojambo).
  parent(obambo1,wandera).
  parent(obambo1,nikolai).
  parent(ojambo,omkofu).
  parent(ojambo,jacky).
  parent(ojambo,maureen).
  parent(tabitha,omkofu).
  parent(tabitha,jacky).
  parent(tabitha,maureen).
  parent(wafulaD,john).
  parent(wafulaD,cecilia).
  parent(wafulaD,ombima).
  parent(wafulaD,achola1).
  parent(wafulaD,atemi).
  parent(wafulaD,tabu1).
  parent(wafulaD,muhonja).
  parent(ritah,ombima).
  parent(ritah,achola1).
  parent(ritah,atemi).
  parent(ritah,tabu1).
  parent(ritah,muhonja).
  parent(achola1,mitchy).
  parent(fred,mitchy).
  parent(tabu1,denita).
  parent(kevin,denita).
  parent(omkofu,esther).
  parent(omkofu,mshikawa).
  parent(millicent,esther).
  parent(millicent,mshikawa).
  parent(jacky,john1).
  parent(jacky,joseph).
  parent(jacky,japheth).
  parent(geofrey,john1).
  parent(geofrey,joseph).
  parent(geofrey,japheth). 

%inwords([],[]).
%inwords([X|TAIL],[T|Z]):-parents[X,T],inwords(TAIL,Z).

  female(tabu).
  female(achola).
  female(cecilia).
  female(tabitha).
  female(ritah).
  female(achola1).
  female(atemi).
  female(tabu1).
  female(muhonja).
  female(mitchy).
  female(denita).
  female(esther).
  female(mshikawa).


  male(obambo).
  male(wesonga).
  male(wasike).
  male(obambo1).
  male(wesonga1).
  male(ojambo).
  male(wafulaD).
  male(wandera).
  male(nikolai).
  male(omkofu).
  male(ombima).
  male(kevin).
  male(fred).
  male(john).
  male(john1).
  male(joseph).
  male(japheth).


mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
%haschild(X):-parent(X, ).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.