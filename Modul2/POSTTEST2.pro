predicates
	nondeterm pemburu(symbol,symbol)
	nondeterm hewan(symbol,symbol)
	nondeterm diburuDengan(symbol,symbol)
	nondeterm diburu(symbol)
	nondeterm pelaku(symbol)
	nondeterm motif(symbol,symbol)
	nondeterm milik(symbol,symbol)
	nondeterm memburuDengan(symbol,symbol)
	nondeterm pemilik(symbol,symbol)
	nondeterm penjahat(symbol)
	
	
clauses
	pemburu(paul,keren).
	pemburu(wera,habet).
	pemburu(vino,handal).
	
	hewan(buaya,wera).
	
	diburuDengan(buaya,senjata).
	diburu(buaya).
	
	motif(kulitBuaya,uang).
	memburuDengan(pistol,senjata).
	
	milik(paul,senapan).
	milik(vino,pistol).
	
	pemilik(Penjahat,Senjata):-
		milik(Penjahat,Senjata).
		
	penjahat(Penjahat):-
		diburuDengan(buaya,Senjata),
		memburuDengan(Senjata,Senjata),
		pemilik(Penjahat,Senjata).
	penjahat(Penjahat):-
		pemburu(Penjahat,_).
	pelaku(Pemburu):-
		pemburu(Pemburu,handal).
		
goal
	motif(Tujuan,Untuk);
	memburudengan(Benda,Jenis);
	pelaku(Penjahat).
	
	
	