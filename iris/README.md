# Revisão Probabilidade

- Produzir um estudo de caso na forma de um relatório técnico descrevendo o uso de probabilidades aplicado ao conjunto de dados  "Iris Data Set" do repositório http://archive.ics.uci.edu/ml/.

- Sobre as características, defina intervalos de valores para cada uma delas de forma que as separem em 'pequena', 'media' e 'grande'.

- Após a definição dos intervalos, construa a matriz de distribuição de frequências e, a partir dessa matriz defina os seguintes itens:

- Formalize o espaço amostral;

- A probabilidade de cada resultado possível (probabilidades a priori);

- Defina pelo menos 3 eventos e calcule a probabilidade de cada um dos eventos;

- Descrever/Comente como a escolha das características (eventos) diferentes modificaram (ou não) os resultados;

- Defina pelo menos um exemplo de união de probabilidades;

- Defina pelo menos um exemplo de interseção de probabilidades;

- Defina pelo menos 3 exemplos de probabilidades condicionais.

O trabalho é individual, qualquer dúvida enviem e-mail (fabricio@utfpr.edu.br).

## Passos para execução da classificação

O package contido nesse repositório possue um arquivo chamado de ranking, onde o mesmo será responsável pela classificação de cada um dos atributos do iris e retornará o dataframe formatado com a classificação. Após obter o dataframe é necessário criar um tabela para melhorar a visualização.

O comando necessário para executar a classificação:

    i <- ranking(iris)

Apos a sua execução, crie uma tabela a partir das colunas que queira.

## Relatório

Foram definidos intervalos sobre o Dataset `iris`, onde os mesmo iam de 50 a 50, para que assim possamos classifica-las como pequena, média e grande.

### Espaço amostral

O espaço amostral do iris é classificado da seguinte maneira, onde esse espaço se extende as demais colunas de tamanho de petala e sepala.

Ω = {setosa pequena, setosa média, setosa grande, versicolor pequena, versicolor média, versicolor grande, virginica pequena, virginica média, virginica grande}

### Probabilidade

Neste espaço amostral temos a probabilidade de 1/9 para cada possibilidade de tipo de iris pelo seu tamanho.

### Eventos

Definição de abreveaturas:

- Tipos de iris:
    - Setosa - (S)
    - Versicolor - (VC)
    - Virginica - (VG)
- Estrutura da iris:
    - Petala - (P)
    - Sepala - (S)
- Medidas de tamanho:
    - Comprimento - (C)
    - Largura (L)
- Classificação de Tamanho:
    - Pequena - (P)
    - Média - (M)
    - Grande - (G)

OBS: A definição das caracteristicas se dará por meio da abreveação, seguindo a ordem de `Estrutura da iris > Medidadas de tamanho > Classificação de Tamanho`.

O total de amostras é definido como 150.

Apesar de o dataset ser regular tendo em vista a distribuição dos dados, houve mudanças drasticas entre os eventos escolhidos, fazendo com que houvesse uma grande diferença entre dois dos eventos escolhidos. A partir dele é possivel concluir que mesmo analisando um dataset `normal` a distribução não se conteve em mudanças.


#### Evento 1 - Vesicolor comprimento da petala média

##### União de Probabilidade

- Probabilidade da união de versicolor (VC) e comprimento da petala média (PCM)

P(VC ∪ PCM) = P(VC) + P(PCM) - P(VC ∩ PCM) = 50/150 + 50/150 - 46/150 = 54/150

##### Interseção de Probabilidade

- Probabilidade da intersecção de versicolor (VC) e comprimento da petala média (PCM).

P(VC ∩ PCM) = 46/150

#### Evento 2 - Setosa comprimento da sepala pequena

##### União de Probabilidade

- Probabilidade da união de setosa (S) e comprimento da sepala pequena (SCP)

P(S ∪ SCP) = P(S) + P(SCP) - P(S ∩ SCP) = 50/150 + 49/150 - 43/150 = 56/150

##### Interseção de Probabilidade

- Probabilidade da intersecção de setosa (S) e comprimento da sepala média (SCP).

P(S ∩ SCP) = 43/150

#### Evento 3 - Setosa largura de sepala médio

##### União de Probabilidade

- Probabilidade da união de setosa (S) de largura de sepala médio (SLM)

P(S ∪ SLM) = P(S) + P(SLM) - P(S ∩ SLM) = 50/150 + 50/150 - 15/150 = 85/150


##### Interseção de Probabilidade

- Probabilidade da intersecção de setosa (S) de largura de sepala médio (SLM)

P(S ∩ SLM) = 15/150


### Probabilidade Condicional

- Uma flor escolhida ao acaso, seja setosa, de comprimento de petala média e probabilidade de possuir comprimento de sepala pequeno

    - Probabilidade de setosa de comprimento de petala média
        
        P(A) = 1/50

    - Probabilidade de setosa de comprimento de sepala pequeno

        P(B) = 43/50

Então P(A | B) = P(A∩B)/P(B), logo P(A | B) = (1/50)/(43/50), assim retornando P(A | B) = 1/43.

- Uma flor escolhida ao acaso, seja setosa, de largura de petala média e probabilidade de possuir largura de sepala pequeno

    - Probabilidade de setosa de largura de petala média
        
        P(A) = 1/50

    - Probabilidade de setosa de largura de sepala pequeno

        P(B) = 2/50

Então P(A | B) = P(A∩B)/P(B), logo P(A | B) = (1/50)/(2/50), assim retornando P(A | B) = 1/2.

- Uma flor escolhida ao acaso, seja setosa, de largura de petala pequena e probabilidade de possuir comprimento de sepala pequeno

    - Probabilidade de setosa de largura de petala grande
        
        P(A) = 49/50

    - Probabilidade de setosa de comprimento de sepala pequeno

        P(B) = 33/50

Então P(A | B) = P(A∩B)/P(B), logo P(A | B) = (49/50)/(33/50), assim retornando P(A | B) = 49/33.