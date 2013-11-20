SturmLiouville
==============

Problema de Sturm Liouville.

Autores: Caique Ferreira Lima, Carlos Akutagawa Kawai, Victor Shin Kinoshita

* O programa principal é a função principal()

* O projeto está organizado mais ou menos como orientação a objetos. 

* Os arquivos estão separados entre os tipos:
	- modelo_{tipo} são os modelos de dados adotados que são e devem ser respeitados para que as funções funcionem.
	- entrada_{tipo} são os dados puros que podem ser configurados.
	- func_{tipo} são os arquivos de funções

* Todas as funções são reaproveitáveis basta respeitar as estruturas de dados.

* Para fazer sua própria interpolação, crie um modelo do tipo modelo_informacoes_sturm_liouville, e passe esse modelo como parâmetro na função func_sturm_liouville({modelo}). siga o exemplo do entrada_1_principal.m