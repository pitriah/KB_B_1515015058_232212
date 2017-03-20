/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  title,author = symbol				%Deskripsi dan implementasi yang digunakan pada program
  pages        = unsigned			%Deskripsi dan implementasi yang digunakan pada program

predicates
  book(title,pages) - nondeterm (i,o)		%book memiliki title inputan dari program dan pages sebagai output untuk menghasilkan goals
  written_by(author,title) - nondeterm (o,o)	%written_by memiliki author dan title sebagai output agar dapat menghasilkan goals
  long_novel(title) - nondeterm (o)		%long_novel memilik title sebagai output agar dapat menghasilkan goals yang sesuai dengan clauses

clauses
  written_by(fleming,"DR NO").			%pada symbol di isi dengan author"fleming" dan unsigned disi dengan title"DR NO" 
  written_by(melville,"MOBY DICK").		%pada symbol di isi dengan author"melville" dan unsigned disi dengan title"MOBY DICK"

  book("MOBY DICK",250).			%nama pada title sama seperti written_by dan symbol diisi dengan pages"250" 
  book("DR NO",310).				%nama pada title sama seperti written_by dan symbol diisi dengan pages"310"

  long_novel(Title):-				%long_novel memiliki title jika memenuhi
	written_by(_,Title),			%title yang sesuai pada written_by
	book(Title,Length),			%title yang sesuai pada written_by berdasarkan pages 
	Length > 300.				%pages hanya boleh berjumlah lebih dari 300

goal
  long_novel(X).				%long_novel menghasilkan X dengan title "DR NO"
