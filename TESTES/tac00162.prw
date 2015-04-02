#include "Protheus.ch"

/*
#function atail()
#tdn http://tdn.totvs.com/display/tec/ATail
*/

User Function TAC00162()

	Local aVetor := {}
	Local aVetor1 := {0,1,2,3,4,5,6,7,8,9,10}
	Local aVetor2 := {10,9,8,7,6,5,4,3,2,1,0}
	Local aVetor3 := {1,5,4,0,3,6,10,2,8,9,7}
	Local aVetor4 := {0,0,0,0,0,0,0,0,0,0,0}
	Local aVetor5 := {}
	Local aVetor6 := {'a','b','c','d','e','f','g','h','i','j','k','l','m',;
						'n','o','p','q','r','s','t','u','v','w','x','y','z'}
	Local aVetor7 := {'z','y','x','w','v','u','t','s','r','q','p','o','n',;
						'm','l','k','j','i','h','g','f','e','d','c','b','a'}
	Local aVetor8 := {'Z','Y','X','W','V','U','T','S','R','Q','P','O','N',;
						'M','L','K','J','I','H','G','F','E','D','C','B','A'}
	Local aVetor9 := {"O","argumento","do","bloco","do","c�digo","bOrdem","quando","especificado","�","utilizado","para","determinar","a","ordem","em","que","os","elementos","ser�o","colocados","Cada","vez","que","o","bloco","de","c�digo","�","avaliado","dois","elementos","do","array","destino","s�o","passados","como","par�metro","de","bloco","e","","o","bloco","dever�","retornar",".T.","(","true","",")","caso","os","elementos","estejam","na","ordem","desejada"}
	Local aVetor10 := {"O","TOTVS","Application","Server","�","o","principal","meio","de","acesso","a","execu��o","de","rotinas","desenvolvidas","em","AdvPL","no","sistema","de","gest�o",".","Atrav�s","desta","aplica��o","os","c�digos","fontes,","com","ou","sem","interface","com","o","usu�rio,","s�o","executados.","","No","entanto,","nesse","tipo","de","desenvolvimento,","","s�o","considerados","apenas","os","programas","que","realizam","algum","tipo","de","interface","remota","utilizando","um","protocolo","de","comunica��o","do","sistema."}
	Local aVetor11 := {'z','y','x','w','v','u','t','s','r','q','p','o','n',;
						'Z','Y','X','W','V','U','T','S','R','Q','P','O','N',;
						'm','l','k','j','i','h','g','f','e','d','c','b','a',;						
						'M','L','K','J','I','H','G','F','E','D','C','B','A'}
	Local aVetor12 := {.T.,.T.,.T.,.F.,.F.,.T.,.f.,.f.,.t.,.t.,.T.,.f.,.F.,.T.}
	Local aVetor13 := {{|Y|X:=10*Y},{|Y|X:=10-20},{|Y|X:=23},{|Y|X:=10},{|Z|X:=10+Z},{|Z|X:=10, Y:=30},{|K|X:=K},{|X|X+=X},{|X|X}}
	Local aVetor14 := {"ABC",531,"GHI","JKL",100,751,"VWX","YZ","KWY",;
						  DATE(),100,DATE()+3,DATE()+4,681,DATE()-1,DATE()-2,DATE()-3,DATE()-5,;
						  TIME(),SECONDS(),.F.,100,SECONDS()-40,SECONDS()+10,100,;
						  112,486,716,"PQR",489,100,367,159,SECONDS()+20,SECONDS()+30,;
						  78,"TESTE",TIME(),.T.,.F.,"QKL",451,"TOTVS",476,DATE()-20,.T.,;
						  "a","b","c",1,2,3,"PQIN",752,3.141592,"QDAS",DATE()+20,"OWRM",;
						  "QOW",764,2.718281828}	
	Local aVetor15 := {NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL,NIL}
	Local aFrutas := {"Perta-g�ela","Abiu-cutite","Jambol�o","Aroeira-vermelha","Ara��",;
						"Ara��-da-serra","Caj�-grande","Cambuc�","Fruta-de-tatu","Mamoncillo","Abiu-do-cerrado",;
						"Sapota-do-solim�es","Ara��-boi","Murici-mi�do","Algarobo","Cacau","Murici-do-cerrado",;
						"Anona-lisa","Ara��-de-anta-vermelha","Uricuru","Mabolo","Ara��-roxo","Amarula",;
						"Olho-de-boi","Pimenta-de-macaco","Pequiarana","Murmuru","Seriguela",;
						"Emba�ba-vermelha","Ju�ara","Ameixa-da-caatinga","Am�ndoa","Ing�-dedo","Ang�ria",;
						"Sapoti","Louro-branco","Pitaya","Guabiroba-da-mata","Aboirana","Caqui-do-cerrado",;
						"Bacaba","Tapi�","Pupunha","Feijoa","Murumuru","Ameixa-da-mata","Abric�",;
						"Caga�ta","Ing�-ferradura","Marolo","Bacupari","Anaj�","Sapucaia","Amendoeira-da-praia",;
						"Abiu-piloso","Abric�-da-praia","Fruta-do-conde","Tamarindo","Marmelada-nativa",;
						"Abric�-da-fl�rida","Ameixa-brava","Jaracati�","Lobeira","Abiu-roxo","Maca�ba",;
						"Achu�","Amendoim-de-�rvore","Umbu","Saput�","Fruta-manteiga-de-amendoim",;
						"Monguba","Gua�atunga","Cumaru","Langsat","Castanha-do-par�","Caj�-manga","Juta�",;
						"Ara��-do-mato","Coco","Abiu-preto","Sombra-de-touro","Sorvinha","Mam�o","Cupua�u",;
						"Abricoteiro-do-mato","Maracuj�","Ara��-de-�gua","Abutua-grande","Amanina",;
						"Amora-do-mato","A�a�","Caimito","Breja�va","Algod�ozinho","Ma��-de-�gua","Amendoim-de-bugre",;
						"Aca�ba","Acara-uba","Curiola","Pepino-do-mato","Achachairu",;
						"Acerola","Ing�","Pequi","Caju�","Caj�","Caqui-do-mato","Bapeba-da-restinga",;
						"Catol�","Ajar�","Acum�","Pinha-da-mata","Maraj�","Tatajuba","Abacate","Acuri",;
						"Jarana-mirim","Umiri","Graviola","Murici","Cempedak","Agua�-gua�u","Bacupari-mi�do",;
						"Licuri","Ajuru","Ing�-branco","Ang�","Pinda�ba","Goiaba","Ara��-cag�o","Camu-camu",;
						"Sapota","Jaci","Jatob�","Ajuru-preto","Ma�aranduba","Birib�","Mapati","Baba�u",;
						"Jenipapo","Akee","Apuru�","Quina","Fruto-de-keppel","Bacuri","Alfarroba","Amap�",;
						"Jaboticabarana","Banana","Mam�o-do-mato","Pitomba","Umari","Caj�-redondo",;
						"Ma�aranduba-mirim","Marmelinho","Araticum","Ara��-de-anta","Ara��-do-rio-grande",;
						"Guabiju","Ing�-cip�","Bapeba","Uvaia","Murici-da-mata","Pitanga",;
						"Baru","Mamica-de-cadela","Damasco","Guabiroba-branca","Manga","Buriti","Groselha",;
						"Uxi","Fruta-p�o","Burmese","Caju","Carambola","Jabuticaba",;
						"Dend�","Carna�ba","Castanha-da-�frica","Jimb�o","Cuieira","Mangaba","Cuiarana",;
						"Salak","Jambo","Physalis","Rambut�o","Mangost�o","Duri�o","Fruta-da-condessa",;
						"Xix�","Marang","Mari","Anan�s","Abiu","Groselha","Grumixama","Guariroba","Guabiroba",;
						"Marmelinho-do-campo","Gua�atunga-grande","Guaran�","Ibapob�","Jaca","Murici-pequeno"}						
	Local aBidi := {{"p","n","c","d"},;
					   {"q","a","b","h"},;					   
					   {"o","w","s","i"},;
					   {"t","j","z","k"},;
					   {"r","g","f","e"},;
					   {"l","v","u","x"},;
					   {"y","m","b","a"}}
	Local aResult:= {"d","h","i","k","e","x","a"}	
	Local nCont, nAux, lCorreto, nIndice
	
	/* Teste basico de tail*/
	if(ATAIL(aVetor1) != 10)	
		return -1
	endif
	
	if(ATAIL(aVetor2) != 0)	
		return -2
	endif
	
	if(ATAIL(aVetor3) != 7)	
		return -3
	endif
	
	if(ATAIL(aVetor4) != 0)	
		return -4
	endif

	if(ATAIL(aVetor5) != NIL)	
		return -5
	endif

	FOR nCont := 1 TO 1000
		AADD(aVetor5, RANDOMIZE(-1000,-1))
	NEXT nCont
	
	if(VALTYPE(ATAIL(aVetor5)) != "N")	
		return -6
	endif
	
	AADD(aVetor5, RANDOMIZE(1,10))
	
	nAux := ATAIL(aVetor5)
	if(ATAIL(aVetor5) < 0)	
		return -7
	endif
	
	AADD(aVetor5, RANDOMIZE(11,100))
	
	if(ATAIL(aVetor5) < nAux)	
		return -8
	endif
	
	AADD(aVetor5, "ABC")
	nAux := aVetor5[LEN(aVetor5)]
	if(ATAIL(aVetor5) != nAux)	
		return -9
	endif
	
	if(ATAIL(aVetor6) != 'z')	
		return -10
	endif
	
	if(ATAIL(aVetor7) != 'a')	
		return -11
	endif
	
	if(ATAIL(aVetor8) != 'A')	
		return -12
	endif
	
	if(ATAIL(aVetor9) != "desejada")	
		return -13
	endif
	
	if(ATAIL(aVetor10) != "sistema.")	
		return -14
	endif
	
	if(ATAIL(aVetor11) != "A")	
		return -15
	endif
	
	if(ATAIL(aVetor12) != .T.)	
		return -16
	endif
	
	FOR nCont := -100 TO 100
		AADD(aVetor5, DATE()+nCont)
	NEXT nCont
	
	if(ATAIL(aVetor5) != DATE()+100)	
		return -17
	endif
	
	if(ATAIL(aFrutas) != "Murici-pequeno")	
		return -18
	endif
	
	if(CVALTOCHAR(ATAIL(aBidi)) != "")	
		return -19
	endif	
	
	FOR nCont := 1 TO LEN(aBidi)
		if(ATAIL(aBidi[nCont]) != aResult[nCont])	
			return -20
		endif
	NEXT nCont
	 
	if(EVAL(ATAIL(aVetor13),100) != 100)	
		return -21
	endif	
	
	AADD(aVetor13, {|Z|X:=(10+Z)*14})
	if(EVAL(ATAIL(aVetor13),10) != 280)	
		return -22
	endif	
	
	if(ATAIL(aVetor14) != 2.718281828)	
		return -23
	endif	
	
	if(ATAIL(aVetor15) != NIL)	
		return -24
	endif	
	
	/*Teste com v�rios elementos e alteracoes em um unico vetor*/
	/*Retornos sao inesperados, portanto a comparacao sera com aVetor[LEN(aVetor)]*/
	FOR nCont := 1 TO 1000
		AADD(aVetor, Randomize(-2000,2000)/Randomize(1,500))
	NEXT nCont
	FOR nCont := 1 TO 1000
		AADD(aVetor, CHR(RANDOMIZE(0,255)))
	NEXT nCont
	FOR nCont := 1 TO 1000
		AADD(aVetor, IIF(RANDOMIZE(0,2000) % 2 = 1, .T., .F.))
	NEXT nCont		
	FOR nCont := 1 TO 1000
		nParcela := RANDOMIZE(-2000,2000)
		AADD(aVetor, DATE()+nParcela)
	NEXT nCont
	
	/*Embaralha*/
	FOR nCont := 1 TO 10000
		nIndice := RANDOMIZE(1,LEN(aVetor)+1)
		xAux := aVetor[nIndice]
		ADEL(aVetor,nIndice)
		aVetor[LEN(aVetor)] := xAux
	NEXT nCont
	
	FOR nCont := 1 TO 1000
		nIndice := RANDOMIZE(1,LEN(aVetor)+1)
		xAux := aVetor[nIndice]
		ADEL(aVetor,nIndice)
		aVetor[LEN(aVetor)] := xAux
		IF(aVetor[LEN(aVetor)] != ATAIL(aVetor))
			return -25
		ENDIF
	NEXT nCont	
Return 0