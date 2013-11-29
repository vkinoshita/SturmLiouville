SturmLiouville
==============

Problema de Sturm Liouville.

Autores: Caique Ferreira Lima, Carlos Akutagawa Kawai, Victor Shin Kinoshita

* O programa principal é a função principal()

* Ao plotar grafico é possível verificar, com auxílio do zoom, que a função aproximada está próxima da função exata, porém não são iguais.

* O projeto está organizado mais ou menos como orientação a objetos. Optamos por nomes compridos para dispensar comentarios e melhorar a legibilidade.

* Os arquivos estão separados entre os tipos:
	- modelo_{tipo} são os modelos de dados adotados que são e devem ser respeitados para que as funções funcionem.
	- entrada_{tipo} são os dados puros que podem ser configurados.
	- func_{tipo} são os arquivos de funções

* Todas as funções são reaproveitáveis basta respeitar as estruturas de dados.

* Para fazer sua própria interpolação, crie um modelo do tipo modelo_informacoes_sturm_liouville, e passe esse modelo como parâmetro na função func_sturm_liouville({modelo}). siga o exemplo do entrada_1_principal.m

* Chame (ou modifique) func_gerar_multiplos_relatorios para gerar mais dados. Todos os arquivos serão salvados na pasta "relatorios".

Relatorios
==========

* Graficos: 
           tipo 1 - interpolacao_tipo_1_grafico_serie_20_simpson_42.png
           tipo 2 - interpolacao_tipo_2_grafico_serie_20_simpson_42.png
           tipo 3 - interpolacao_tipo_3_grafico_serie_20_simpson_42.png

* Tabelas:
           tipo 1 - interpolacao_tipo_1_serie_20_simpson_42.txt
           tipo 2 - interpolacao_tipo_2_serie_20_simpson_42.txt
           tipo 3 - interpolacao_tipo_3_serie_20_simpson_42.txt