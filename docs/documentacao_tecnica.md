# Documentação Técnica do Sistema de Gerenciamento de Clientes e Pedidos

## Introdução
Este documento fornece detalhes técnicos sobre a implementação do sistema de gerenciamento de clientes e pedidos.

## Estrutura do Banco de Dados
O banco de dados é estruturado em quatro tabelas principais: Cliente, Pedido, Forma de Pagamento e Entrega. Cada tabela tem suas relações definidas para garantir a integridade dos dados.

## Como Usar
1. Importe o arquivo `modelo.sql` em seu gerenciador de banco de dados.
2. Crie, atualize e delete registros conforme necessário usando instruções SQL apropriadas.
3. Utilize o diagrama ER como referência para entender os relacionamentos e as estruturas de dados.

## Exemplos de Consultas
- **Selecionar todos os pedidos de um cliente específico:**
  ```sql
  SELECT * FROM Pedido WHERE cliente_id = 1;
