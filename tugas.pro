
predicates
	 nondeterm jumlah (integer,integer,integer) 
	  
	 nondeterm ruang(symbol,symbol) 
	
	nondeterm hari(symbol,symbol,integer)
	
clauses
	hari(senin,visual,40000).
	hari(selas,smbd,50000).
	hari(rabu,faremwork,30000).
	hari(kamis,kecerdasan_buatan,45000).
	
		jumlah(Jmlhpembelajaran,X,Y):-
		  Jmlhpembelajaran=X*Y.
	
	ruang(labBp,senin).
	ruang(puskom1,selasa).
	ruang(puskom2,A):-
		ruang(laBp,A).		

		
goal
	hari(Hari,Jadwal,Harga),Harga>40000;
	hari(Hari,Jadwal,Harga),Harga<40000;
	jumlah(Jmlhpembelajaran,3,4);
	ruang(puskom1,selasa);
	ruang(puskom2,C).
	