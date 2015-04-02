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
	Local aVetor9 := {"O","argumento","do","bloco","do","código","bOrdem","quando","especificado","é","utilizado","para","determinar","a","ordem","em","que","os","elementos","serão","colocados","Cada","vez","que","o","bloco","de","código","é","avaliado","dois","elementos","do","array","destino","são","passados","como","parâmetro","de","bloco","e","","o","bloco","deverá","retornar",".T.","(","true","",")","caso","os","elementos","estejam","na","ordem","desejada"}
	Local aVetor10 := {"O","TOTVS","Application","Server","é","o","principal","meio","de","acesso","a","execução","de","rotinas","desenvolvidas","em","AdvPL","no","sistema","de","gestão",".","Através","desta","aplicação","os","códigos","fontes,","com","ou","sem","interface","com","o","usuário,","são","executados.","","No","entanto,","nesse","tipo","de","desenvolvimento,","","são","considerados","apenas","os","programas","que","realizam","algum","tipo","de","interface","remota","utilizando","um","protocolo","de","comunicação","do","sistema."}
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
	Local aFrutas := {"Perta-güela","Abiu-cutite","Jambolão","Aroeira-vermelha","Araçá",;
						"Araçá-da-serra","Cajá-grande","Cambucá","Fruta-de-tatu","Mamoncillo","Abiu-do-cerrado",;
						"Sapota-do-solimões","Araçá-boi","Murici-miúdo","Algarobo","Cacau","Murici-do-cerrado",;
						"Anona-lisa","Araçá-de-anta-vermelha","Uricuru","Mabolo","Araçá-roxo","Amarula",;
						"Olho-de-boi","Pimenta-de-macaco","Pequiarana","Murmuru","Seriguela",;
						"Embaúba-vermelha","Juçara","Ameixa-da-caatinga","Amêndoa","Ingá-dedo","Angúria",;
						"Sapoti","Louro-branco","Pitaya","Guabiroba-da-mata","Aboirana","Caqui-do-cerrado",;
						"Bacaba","Tapiá","Pupunha","Feijoa","Murumuru","Ameixa-da-mata","Abricó",;
						"Cagaíta","Ingá-ferradura","Marolo","Bacupari","Anajá","Sapucaia","Amendoeira-da-praia",;
						"Abiu-piloso","Abricó-da-praia","Fruta-do-conde","Tamarindo","Marmelada-nativa",;
						"Abricó-da-flórida","Ameixa-brava","Jaracatiá","Lobeira","Abiu-roxo","Macaúba",;
						"Achuá","Amendoim-de-árvore","Umbu","Saputá","Fruta-manteiga-de-amendoim",;
						"Monguba","Guaçatunga","Cumaru","Langsat","Castanha-do-pará","Cajá-manga","Jutaí",;
						"Araçá-do-mato","Coco","Abiu-preto","Sombra-de-touro","Sorvinha","Mamão","Cupuaçu",;
						"Abricoteiro-do-mato","Maracujá","Araçá-de-água","Abutua-grande","Amanina",;
						"Amora-do-mato","Açaí","Caimito","Brejaúva","Algodãozinho","Maçã-de-água","Amendoim-de-bugre",;
						"Acaíba","Acara-uba","Curiola","Pepino-do-mato","Achachairu",;
						"Acerola","Ingá","Pequi","Cajuí","Cajá","Caqui-do-mato","Bapeba-da-restinga",;
						"Catolé","Ajarí","Acumã","Pinha-da-mata","Marajá","Tatajuba","Abacate","Acuri",;
						"Jarana-mirim","Umiri","Graviola","Murici","Cempedak","Aguaí-guaçu","Bacupari-miúdo",;
						"Licuri","Ajuru","Ingá-branco","Angá","Pindaíba","Goiaba","Araçá-cagão","Camu-camu",;
						"Sapota","Jaci","Jatobá","Ajuru-preto","Maçaranduba","Biribá","Mapati","Babaçu",;
						"Jenipapo","Akee","Apuruí","Quina","Fruto-de-keppel","Bacuri","Alfarroba","Amapá",;
						"Jaboticabarana","Banana","Mamão-do-mato","Pitomba","Umari","Cajá-redondo",;
						"Maçaranduba-mirim","Marmelinho","Araticum","Araçá-de-anta","Araçá-do-rio-grande",;
						"Guabiju","Ingá-cipó","Bapeba","Uvaia","Murici-da-mata","Pitanga",;
						"Baru","Mamica-de-cadela","Damasco","Guabiroba-branca","Manga","Buriti","Groselha",;
						"Uxi","Fruta-pão","Burmese","Caju","Carambola","Jabuticaba",;
						"Dendê","Carnaúba","Castanha-da-áfrica","Jimbão","Cuieira","Mangaba","Cuiarana",;
						"Salak","Jambo","Physalis","Rambutão","Mangostão","Durião","Fruta-da-condessa",;
						"Xixá","Marang","Mari","Ananás","Abiu","Groselha","Grumixama","Guariroba","Guabiroba",;
						"Marmelinho-do-campo","Guaçatunga-grande","Guaraná","Ibapobó","Jaca","Murici-pequeno"}						
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
	
	/*Teste com vários elementos e alteracoes em um unico vetor*/
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