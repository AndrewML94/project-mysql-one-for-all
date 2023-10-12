# Projeto MySQL One for All (Décimo nono projeto desenvolvido)

Neste projeto recebemos um clone simplificado do Spotify, porém sem estar normalizado, e minha tarefa foi normalizar a estrutura que foi passada. O processo de normalização é algo que ajuda a dar mais credibilidade a um profissional que atua com estruturas de banco de dados diariamente. Estruturas normalizadas reduzem erros, diminuem a redundância e nos permitem garantir maior integridade de dados.

## Habilidades desenvolvidas

- Saber analisar se as tabelas estão normalizadas;
- Identificar modificações necessárias para que as tabelas estejam adequadamente na 1ª, 2ª e 3ª Forma Normais;
- Criar um banco de dados a partir de uma planilha que contém tabelas e dados;
- Criar e modelar tabelas.

## O que foi desenvolvido pelo autor

Todo o conteúdo e elementos presentes na pasta "challenges" foram desenvolvidos exclusivamente por mim, representando minha contribuição integral a este projeto. É importante mencionar que os demais arquivos foram elaborados pela equipe da Trybe como parte do contexto mais amplo do projeto.

## Requisitos do projeto

1. Normalize as tabelas da planilha SpotifyClone e após a normalização, criar as tabelas no banco de dados;
2. Criar uma QUERY que exiba três colunas:
    - A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes";
    - A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas";
    - A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".
3. Criar uma QUERY que deverá ter apenas três colunas:
    - A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária;
    - A segunda coluna deve possuir o alias "musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução;
    - A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução;
4. Criar uma QUERY que deve mostrar as pessoas usuárias que estavam ativas a partir do ano de 2021, se baseando na data mais recente no histórico de reprodução.
5. Criar uma QUERY que possua duas colunas:
    - A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção;
    - A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.
6. Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma QUERY que deve exibir quatro dados:
    - A primeira coluna deve ter o alias "faturamento_minimo" e exibir o menor valor de plano existente para uma pessoa usuária;
    - A segunda coluna deve ter o alias "faturamento_maximo" e exibir o maior valor de plano existente para uma pessoa usuária;
    - A terceira coluna deve ter o alias "faturamento_medio" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento;
    - Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.
7. Mostrar uma relação de todos os álbuns produzidos por cada pessoa artista, ordenada pela quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma QUERY com as seguintes colunas:
    - A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista";
    - A segunda coluna deve exibir o nome do álbum, com o alias "album";
    - A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "pessoas_seguidoras";
8. Mostrar uma relação dos álbuns produzidos por uma pessoa artista específica, neste caso "Elis Regina". Para isto crie uma QUERY que o retorno deve exibir as seguintes colunas:
    - O nome da pessoa artista, com o alias "artista";
    - O nome do álbum, com o alias "album";
    - Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.
9. Criar uma QUERY que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico da usuária "Barbara Liskov" e a consulta deve retornar a seguinte coluna:
    - O valor da quantidade, com o alias "musicas_no_historico".
10. Normalize a tabela da planilha SpotifyClone-fav-songs e após a normalização, criar a tabela no banco de dados;
11. Criar uma QUERY que exibe o top 3 de álbuns com as músicas que mais foram favoritadas;
12. Criar uma QUERY que exibe um ranking de artistas baseado na quantidade de favoritadas em suas músicas;
13. Criar uma QUERY que exibe uma relação da quantidade total de pessoas usuárias e favoritadas por faixa etária.