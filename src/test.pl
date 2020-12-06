
set_equal(X,Y):-subset(X,Y),subset(Y,X).

:- begin_tests(tp).
test(teclasNecesarias1):-
	teclasNecesarias([],[]).

test(teclasNecesarias2):-
	teclasNecesarias([l,a,-,c,a,s,a],[5, 2, 0, 2, 2, 7, 2]).


test(teclasNecesarias3):-
	teclasNecesarias([5, 2, 0, 2 ],[5, 2, 0, 2]).

	
test(palabraPosible1):-
	findall(PA,palabraPosible([2],PA),Y),set_equal(Y,[[c, a, s, a], [a], [c, a, s, a, m, i, e, n, t, o], [a, n, t, e, s]]).

test(palabraPosible2):-
	findall(PA,palabraPosible([2,2],PA),Y),set_equal(Y,[[c, a, s, a], [c, a, s, a, m, i, e, n, t, o]]).



test(todasLasPalabrasPosibles1):-
	todasLasPalabrasPosibles([2],Y),set_equal(Y,[[c, a, s, a], [a], [c, a, s, a, m, i, e, n, t, o], [a, n, t, e, s]]).


test(todasLasPalabrasPosibles2):-
	todasLasPalabrasPosibles([2,2],Y),set_equal(Y,[[c, a, s, a], [c, a, s, a, m, i, e, n, t, o]]).

test(todasLasPalabrasPosibles3):-
	todasLasPalabrasPosibles([2],[[c,a,s,a], [a], [a,n,t,e,s],[c,a,s,a,m,i,e,n,t,o]]).

test(oracionPosible1):-
	findall(Y,oracionPosible([2,0,3],Y),L),permutation(L,[[c, a, s, a, -, d, e], [c, a, s, a, -, d, e, l], [a, -, d, e], [a, -, d, e, l], [c, a, s, a, m, i, e, n, t, o, -, d, e], [c, a, s, a, m, i, e, n, t, o, -, d, e, l], [a, n, t, e, s, -, d, e], [a, n, t, e, s, -, d, e, l]]).

test(oracionPosible2):-
	findall(Y,oracionPosible([2,0,3,0,2],Y),L),permutation(L,[[c, a, s, a, -, d, e, -, c, a, s, a], [c, a, s, a, -, d, e, -, a], [c, a, s, a, -, d, e, -, c, a, s, a, m, i, e, n, t, o], [c, a, s, a, -, d, e, -, a, n, t, e, s], [c, a, s, a, -, d, e, l, -, c, a, s, a], [c, a, s, a, -, d, e, l, -, a], [c, a, s, a, -, d, e, l, -, c, a, s, a, m, i, e, n, t, o], [c, a, s, a, -, d, e, l, -, a, n, t, e, s], [a, -, d, e, -, c, a, s, a], [a, -, d, e, -, a], [a, -, d, e, -, c, a, s, a, m, i, e, n, t, o], [a, -, d, e, -, a, n, t, e, s], [a, -, d, e, l, -, c, a, s, a], [a, -, d, e, l, -, a], [a, -, d, e, l, -, c, a, s, a, m, i, e, n, t, o], [a, -, d, e, l, -, a, n, t, e, s], [c, a, s, a, m, i, e, n, t, o, -, d, e, -, c, a, s, a], [c, a, s, a, m, i, e, n, t, o, -, d, e, -, a], [c, a, s, a, m, i, e, n, t, o, -, d, e, -, c, a, s, a, m, i, e, n, t, o], [c, a, s, a, m, i, e, n, t, o, -, d, e, -, a, n, t, e, s], [c, a, s, a, m, i, e, n, t, o, -, d, e, l, -, c, a, s, a], [c, a, s, a, m, i, e, n, t, o, -, d, e, l, -, a], [c, a, s, a, m, i, e, n, t, o, -, d, e, l, -, c, a, s, a, m, i, e, n, t, o], [c, a, s, a, m, i, e, n, t, o, -, d, e, l, -, a, n, t, e, s], [a, n, t, e, s, -, d, e, -, c, a, s, a], [a, n, t, e, s, -, d, e, -, a], [a, n, t, e, s, -, d, e, -, c, a, s, a, m, i, e, n, t, o], [a, n, t, e, s, -, d, e, -, a, n, t, e, s], [a, n, t, e, s, -, d, e, l, -, c, a, s, a], [a, n, t, e, s, -, d, e, l, -, a], [a, n, t, e, s, -, d, e, l, -, c, a, s, a, m, i, e, n, t, o], [a, n, t, e, s, -, d, e, l, -, a, n, t, e, s]]).
:- end_tests(tp).

