# Trabalho Circuitos Digitais 1 - Unidade Lógica e Aritmética (ULA) de 4 Bits

Este projeto implementa uma Unidade Lógica e Aritmética (ULA) de 4 bits em VHDL. A ULA é responsável por realizar operações aritméticas e lógicas básicas com base em sinais de entrada e controle.

## Estrutura do Projeto

A estrutura do projeto é composta pelos seguintes arquivos principais:

- **`ULA_4bits.vhd`**: Implementação principal da ULA de 4 bits.
- **Componentes auxiliares**:
  - `and2_ula.vhd`: Implementação da operação lógica AND.
  - `or2_ula.vhd`: Implementação da operação lógica OR.
  - `xor2_ula.vhd`: Implementação da operação lógica XOR.
  - `not2_ula.vhd`: Implementação da operação lógica NOT.
  - `nand2_ula.vhd`: Implementação da operação lógica NAND.
  - `nor2_ula.vhd`: Implementação da operação lógica NOR.
  - `shift_left_ula.vhd`: Implementação da operação de deslocamento à esquerda.
  - `somador_de_4bits.vhd`: Implementação de um somador de 4 bits.
  - `seg14.vhd`: Conversor para display de 7 segmentos.

## Funcionalidades

A ULA suporta as seguintes operações, controladas pelo sinal de entrada `F`:

| Código (`F`) | Operação         |
|--------------|------------------|
| `000`        | Soma             |
| `001`        | AND              |
| `010`        | OR               |
| `011`        | XOR              |
| `100`        | NOT              |
| `101`        | NAND             |
| `110`        | NOR              |
| `111`        | Shift Left       |

### Sinais de Entrada e Saída

- **Entradas**:
  - `A`, `B`: Vetores de 4 bits para os operandos.
  - `F`: Vetor de 3 bits para selecionar a operação.
- **Saídas**:
  - `S`: Vetor de 14 bits para exibir o resultado no display de 7 segmentos.
  - `Z`: Sinal de zero (ativo quando o resultado é zero).
  - `N`: Sinal de negativo (indica o bit mais significativo do resultado).
  - `V`: Sinal de overflow (ativo apenas na operação de soma).

## Como Executar

1. Abra o projeto em um ambiente de desenvolvimento compatível com VHDL, como o Quartus Prime.
2. Compile os arquivos VHDL.
3. Simule o arquivo de teste `ULA_4bits_tb.vhd` para verificar o funcionamento da ULA.
4. Opcionalmente, sintetize o projeto para implementação em hardware FPGA.

## Testes

O arquivo `ULA_4bits_tb.vhd` contém o banco de testes para validar o funcionamento da ULA. Ele simula diferentes combinações de entradas e verifica as saídas esperadas.

## Relatório

O relatório detalhado do projeto está disponível no arquivo `relatorio_cd1.pdf`.

## Autor

Este projeto foi desenvolvido como parte do trabalho da disciplina de Circuitos Digitais 1 na Universidade Federal de Pelotas.
