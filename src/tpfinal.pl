teclado([
(1, [1]), (2, [2,a,b,c]), (3, [3,d,e,f]),
(4, [4,g,h,i]), (5, [5,j,k,l]), (6, [6,m,n,o]),
(7, [7,p,q,r,s]), (8, [8,t,u,v]), (9, [9,w,x,y,z]),
(*, [*,+]), (0, [0,-]), (#, [#])
]).
diccionario([
[1,a], [l,a], [c,a,s,a], [a], [d,e], [r,e,j,a], [t,i,e,n,e],
[c,a,s,a,m,i,e,n,t,o], [d,e,l], [a,n,t,e,s]
]).

% Punto 1. ---------------------------------------
listaDeDigito((Digito, X)):-
    teclado(Teclado),
    member((Digito, X), Teclado).

letraEsDeDigito(Letra, Digito):-
    listaDeDigito((Digito, Xs)),
    member(Letra, Xs).

teclasNecesarias([],[]).
teclasNecesarias([L|Ls], [D|Ds]):- 
    letraEsDeDigito(L, D),
    teclasNecesarias(Ls, Ds).

% Punto2 -----------------------------------------------------

palabraDeDiccionario(Palabra):-
    diccionario(Dic),
    member(Palabra, Dic).

prefijo([],_).
prefijo([P|Ls],[P|Ls2]):-
    prefijo(Ls,Ls2).

palabraPosible(Ds, Palabra):- 
    teclasNecesarias(Ls, Ds),
    prefijo(Ls,Palabra),
    palabraDeDiccionario(Palabra).

% Punto 3 ---------------------
del(Elem,[Elem|Xs],Xs).
del(Elem,[Head|Tail],[Head|Zs]):-
    del(Elem,Tail,Zs).

perm(List,[Head|Tail]) :- 
    del(Head,List,Rest),
    perm(Rest,Tail).
perm([],[]).

todasLasPalabrasPosibles(Ds, Ls):-
    findall(P, palabraPosible(Ds, P), Ps),
    perm(Ls, Ps).

%Punto 4 ---------------------------


oracionBienSeparada([_]).
oracionBienSeparada([0,X|Xs]) :- 
    dif(0,X), 
    oracionBienSeparada([X|Xs]).
oracionBienSeparada([X,0|Xs]) :- 
    dif(0,X), 
    oracionBienSeparada([0|Xs]).

	
espacioOPalabra([], []).
espacioOPalabra([X|Xs], Res) :-
    espacioOPalabra(Xs, Res1),
    (X = 0 -> 
    	Res = [-|Res1];
		palabraPosible([X], Response),
    append(Response, Res1, Res) ).

oracionPosible(Xs,Ys):-
    oracionBienSeparada(Xs),
    espacioOPalabra(Xs, Ys).









