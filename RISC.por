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
    escreva("\n1) Dep�sito")
    escreva("\n2) Saque")
    escreva("\n3) Consultar Saldo")
    escreva("\n4) Sair da opera��o")
    escreva("\n5) Apresentar Menu\n")
    escreva("\nDigite o n�mero correspondente a opera��o desejada: ")
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
            escreva("\nDigite o valor do dep�sito: ")
            leia(valor)
            escreva("\nSeu saldo atual �: ", deposito(valor, saldo))

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
            escreva("\nOp��o inv�lida. Escolha novamente.\n")
      }
    }
  }
}
