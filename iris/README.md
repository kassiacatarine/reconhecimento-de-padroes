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

O espaço amostral do iris classificado da seguinte maneira, onde esse espaço se extende as demais colunas de iformalão
{setosa pequena, setosa média, setosa grande, versicolor pequena, versicolor média, versicolor grande, virginica pequena, virginica média, virginica grande}

### Probabilidade

Neste espaço amostral temos a probabilidade de 1/9 para cada possibilidade de tipo de iris pelo seu tamanho.

### Eventos

#### Evento 1 -
#### Evento 2 -
#### Evento 3 -

### União de Probabilidade

### Interseção de Probabilidade

### Probabilidades Condicionais

