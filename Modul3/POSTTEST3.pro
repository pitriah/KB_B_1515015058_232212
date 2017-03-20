domains
	a,b,c,d,e,h=symbol

predicates
	nondeterm pemburu(a,a)
	nondeterm hewan(b,b)
	nondeterm diburuDengan(c,c)
	nondeterm diburu(h)
	nondeterm pelaku(symbol)
	nondeterm motif(d,d)
	nondeterm milik(e,e)
	nondeterm memburuDengan(symbol,symbol)
	nondeterm pemilik(symbol,symbol)
	nondeterm penjahat(symbol)
	
	
clauses	
	pemburu(paul,keren).
	pemburu(wera,habet).
	pemburu(vino,handal).
	
	hewan(gajah,wera).
	
	diburuDengan(gajah,senjata).
	diburu(gajah).
	
	motif(gading,uang).
	memburuDengan(pistol,senjata).
	
	milik(paul,senapan).
	milik(wera,pisau).
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
	write("Nama yang diduga pelaku: "),nl,penjahat(Tersangka);
	nl,write("Alat yang digunakan pelaku: "),nl,milik(_,Alat);
	nl,write("Alasan melakukan pemburuan liar: "), nl,motif(Tujuan,_);
	motif(_,Untuk);
	nl,write("cara pemburu memburu dengan: "), nl,memburuDengan(Alat,_);
	memburudengan(_,Jenis);
	nl,write("Pelaku yang ditetapkan sebagai tersangka bernama: "),
	nl,pelaku(Penjahat).
	
	
	