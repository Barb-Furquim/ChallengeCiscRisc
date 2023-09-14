programa {

real saldo, valor, valorDeposito, saldoAtual
real opcao
real saldo = 600
real operador = 1

  funcao deposito(real valorDeposito, real saldoAtual)
  {
    saldoAtual = saldoAtual + valorDeposito
    retorne saldoAtual
  }

  funcao saque(real valorSaque, real saldoAtual)
  {
    se (saldo >= valorSaque)
    {
      saldoAtual = saldo - valorSaque
      escreva("\nValor do saque: ", valorSaque, "\n")
      escreva("\nSaldo atual: ", saldoAtual, "\n")
    }
    senao
    {
      escreva("\nSaldo insuficiente para saque.\n")
    }
    retorne saldoAtual
  }

  funcao consultaSaldo(real saldoAtual)
  {
    escreva("\nSaldo atual: ", saldoAtual, "\n")
  }

  funcao printarMenu()
  {
    escreva("\nMenu:")
    escreva("\n1) Depósito")
    escreva("\n2) Saque")
    escreva("\n3) Consultar Saldo")
    escreva("\n4) Sair da operação")
    escreva("\n5) Apresentar Menu\n")
    escreva("\nDigite o número correspondente a operação desejada: ")
  }

  funcao inicio() 
  {
    printarMenu()
    equanto (operador == 1)
    {
      leia(opcao)
      escolha (opcao)
      {
        caso 1:
            escreva("\nDigite o valor do depósito: ")
            leia(valor)
            escreva("\nSeu saldo atual é: ", deposito(valor, saldo))

            // Para adicionar uma linha em branco para separar a frase do final do programa
            escreva("\n") 
            pare

        caso 2:
            escreva("\nDigite o valor do saque: ")
            leia(valor)
            saldo = saque(valor, saldo)
            pare

        caso 3:
            consultaSaldo(saldo)
            pare

        caso 4:
            escreva("\nSaindo do programa.\n")
            pare

        caso 5:
            printarMenu()
            pare

        caso contrario
            escreva("\nOpção inválida. Escolha novamente.\n")
      }
    }
  }
}
