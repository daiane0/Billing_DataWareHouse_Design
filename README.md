# Projeto: Data Warehouse de Faturamento para Provedor de Serviço em Nuvem

Este projeto faz parte da Formação de Engenheiro de Dados da IBM na plataforma Coursera e tem como objetivo projetar um Data Warehouse (DW) capaz de suportar uma série de consultas relacionadas ao faturamento de um provedor de serviço em nuvem.

## Consultas Suportadas:
- Média de faturamento por cliente
- Faturamento por país
- Top 10 clientes
- Top 10 países
- Faturamento por indústria
- Faturamento por categoria
- Faturamento por ano
- Faturamento por mês
- Faturamento por trimestre
- Média de faturamento por indústria por mês
- Média de faturamento por indústria por trimestre
- Média de faturamento por país por trimestre
- Média de faturamento por país por indústria por trimestre

## Detalhes dos Campos dos Dados de Faturamento:
- **customerid**: Identificação do cliente
- **category**: Categoria do cliente (Exemplo: Individual ou Empresa)
- **country**: País do cliente
- **industry**: Domínio/Indústria ao qual o cliente pertence (Exemplo: Jurídico, Engenharia)
- **month**: Mês faturado (AAAA-MM)
- **billedamount**: Valor cobrado pelos serviços de nuvem fornecidos naquele mês em USD

## Estrutura da Tabela de Fatos:
- **billid**: Chave primária - Identificador único para cada fatura
- **customerid**: Chave estrangeira - Identificação do cliente
- **monthid**: Chave estrangeira - Identificação do mês (Para resolver as informações do mês faturado)
- **billedamount**: Valor cobrado pelos serviços de nuvem fornecidos naquele mês em USD

## Estrutura das Tabelas de Dimensões:
- **DimCliente**: Esta tabela contém todas as informações relacionadas ao cliente
- **DimMês**: Esta tabela contém todas as informações relacionadas ao mês da fatura

## Contribuição:
Este projeto foi desenvolvido como parte da Formação de Engenheiro de Dados da IBM na plataforma Coursera. Créditos ao curso e aos seus instrutores por fornecerem a base para este exercício.


