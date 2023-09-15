programa {

real deposito, valorDeposito, valorSaque
cadeia opcao, novaOperacao
real saldo = 600

  funcao deposito(){
    escreva("\nDigite o valor desejado para deposito: ")
    leia(deposito)

    // atribui a variavel "saldo" o valor do deposito + o saldo ja existente.
    saldo = deposito + saldo
    escreva("\nSeu saldo atual e: " + saldo + " reais.\n")
  }

  funcao saque(){
    escreva("\nDigite o valor do saque: ")
    leia(valorSaque)

      // se o valor do saque e menor ou igual ao saldo.
    se (valorSaque <= saldo){
      saldo = saldo - valorSaque
      escreva("\nSeu saldo atual agora e: ", saldo,  " reais.\n")
    }senao{
      escreva("\nVoce nao possui saldo suficiente para saque. Deseja realizar outra operacao s/n? ")
        leia (novaOperacao)

        // repetir operacaoo
        se (novaOperacao == "s"){
          retorne inicio()
        }
    }
  }

  funcao consultaSaldo(){
    escreva("\nSaldo atual: ", saldo, "\n")
  }

  funcao printarMenu(){
    escreva("\nMenu: \n1) Deposito \n2) Saque \n3) Consultar saldo \n4) Sair da operacao \nEscolha uma das opcoes: ")
  }

  funcao realizarNovaOperacao(){
  escreva("\nDeseja realizar outra operacao s/n? ")
  leia (novaOperacao)

  // se o usuario deseja realizar outra operacao.
  se(novaOperacao == "s"){
    retorne inicio()
  }
}

  funcao inicio() {
    printarMenu()
    leia(opcao)
    equanto(opcao <= "4"){
      escolha (opcao)
      {
        caso "1":
        deposito()
        realizarNovaOperacao()
        pare

        caso "2":
        saque()
        realizarNovaOperacao()
        pare

        caso "3":
        consultaSaldo()
        realizarNovaOperacao()
        pare

        caso "4":
        escreva("\nSaindo do programa.\n")
        pare

        caso contrario:
        escreva("\nOpcao invalida. Escolha novamente.\n")
        inicio()
      }
    }
  }
}

// Programa simples desenvolvido em portugol para realizar funcoes de transacoes bancarias, desenvolvido visando a arquitetura RISC.
// Utiliza instrucoes reduzidas, entao realizo as seguintes instrucoes:
// 1.Utilizo a condicional "escolha/caso", o que diminui a complexibilidade do programa.
// 2.Diferente do programa para a arquitetura CISC, fiz uma funcao para realizar outra operacao, caso o usuario queira, 
// que e a funcao "realizarNovaOperacao()" para n o precisar repetir essa verifica  o em cada funcao, 
// o que tambem diminui a complexibilidade do programa.