# Estudo de Caso: Sistema de Empréstimo de Livros – Biblioteca Universitária

## Situação-Problema (Levantamento de Requisitos)

A biblioteca de uma faculdade deseja informatizar seu sistema de empréstimos. O sistema deve armazenar informações sobre os livros disponíveis, os alunos cadastrados, os empréstimos realizados e as devoluções.

### Requisitos dos Dados

- **Livro**:
  - Código único
  - Título
  - Autor
  - Editora
  - Ano de publicação
  - Quantidade de exemplares

- **Aluno**:
  - Número de matrícula
  - Nome completo
  - Curso
  - E-mail institucional

- **Empréstimo**:
  - Aluno que retirou o livro
  - Livro retirado
  - Data do empréstimo
  - Data prevista para devolução

- **Devolução**:
  - Data de devolução

### Regras de Negócio

- Um aluno pode pegar até **3 livros ao mesmo tempo**.  
- Um livro pode ser emprestado várias vezes, **desde que haja exemplares disponíveis**.
