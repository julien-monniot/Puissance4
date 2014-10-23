
:- use_module(alignment).

play(Player):- etat(Map), pos(Pos), findBestMove(Map, Pos, Player, Res).

findBestMove(Pos, X, Res):- etat(Map), PosToFill is Pos-7, getPlayerSymbol(X, Player), pos(PosToFill), isWin(Map, Player, PosToFill), Res is PosToFill
						;
				etat(Map), PosToFill is Pos-8, getPlayerSymbol(X, Player), pos(PosToFill), isWin(Map, Player, PosToFill), Res is PosToFill
						;
				etat(Map), PosToFill is Pos-6, getPlayerSymbol(X, Player), pos(PosToFill), isWin(Map, Player, PosToFill), Res is PosToFill
						;
				etat(Map), PosToFill is Pos-1, getPlayerSymbol(X, Player), pos(PosToFill), isWin(Map, Player, PosToFill), Res is PosToFill
						;
				etat(Map), PosToFill is Pos+1, getPlayerSymbol(X, Player), pos(PosToFill), isWin(Map, Player, PosToFill), Res is PosToFill
						;
				etat(Map), PosToFill is Pos+6, getPlayerSymbol(X, Player), pos(PosToFill), isWin(Map, Player, PosToFill), Res is PosToFill
						;
				etat(Map), PosToFill is Pos+8, getPlayerSymbol(X, Player), pos(PosToFill), isWin(Map, Player, PosToFill), Res is PosToFill.


getPlayerSymbol(X, Player):- Player is (X+1) mod 2.


getOpponent(Opponent, CurrentPlayer):- Aux is CurrentPlayer+1, Opponent is (Aux mod 2).

myWin(Opponent, PosToFill):- etat(Map), isWin(Map, Opponent, PosToFill).

%Get the element of a list at position N
