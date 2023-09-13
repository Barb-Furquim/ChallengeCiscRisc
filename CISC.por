programa {

  real deposito, valorSaque, saldoAtual
  cadeia opcao, novaOperacao
  real saldo = 700

  funcao inicio() {

    escreva("\nMenu:")
    escreva("\n1) Depósito \n2) Saque \n3) Consultar saldo \n4) Sair da operação \n5) Repetir menu \nEscolha uma das opções: ")
    leia(opcao)

    // se o usuário digitar uma opção inválida.
    se (opcao <= 5){
      se (opcao == 1){
        deposito()   
      }
      senao se (opcao == 2){
        saque()  
      }
      senao se (opcao == 3){
        consultaSaldo()
      }
      senao se (opcao == 4){
        escreva("\nVocê saiu da operação.\n")
      }
      senao se (opcao == 5){
        inicio()
      }
    }senao{
      escreva("\nVocê digitou uma opção inválida, escolha novamente.\n")
      inicio()
    }
  }

  funcao deposito (){

    escreva("\nDigite o valor desejado para depósito: ") 
    leia(deposito)

    // atribui à variável "saldo" o valor do depósito + o saldo já existente.
    saldo = deposito + saldo
    escreva("\nSeu saldo atual é: " + saldo + " reais.\n")  
    escreva("\nDeseja realizar outra operação s/n? ")
    leia (novaOperacao)

    // se o usuário deseja realizar outra operação.
    se(novaOperacao == "s"){
      retorne inicio()
    }
  }

  funcao saque(){

    escreva("\nDigite o valor do saque: ")
      leia(valorSaque)

      // se o valor do saque é menor ou igual ao saldo.
      se (valorSaque <= saldo){
        
        saldo = saldo - valorSaque
        escreva("\nSeu saldo atual agora é: ", saldo,  " reais.\n")
        escreva("\nDeseja realizar outra operação s/n? ")
        leia (novaOperacao)

        // se o usuário deseja realizar outra operação.
        se (novaOperacao == "s"){
          retorne inicio()
        }
      }

      // se o valor do saque é maior que o saldo.
      senao{

        escreva("\nVocê não possui saldo suficiente para saque. Deseja repetir a operação s/n? ")
        leia (novaOperacao)

        // repetir operação
        se (novaOperacao == "s"){
          retorne saque()
        }
    }
  }

  funcao consultaSaldo(){
    escreva("\nSeu saldo atual é: ", saldo, ".\n")
    escreva("\nDeseja realizar outra operação s/n? ")
    leia (novaOperacao)
      se (novaOperacao == "s"){
        retorne inicio()
      }
  }
}

// Programa para realizar funções de transações bancárias, desenvolvido visando a arquitetura CISC.
// Permite ter um nível maior de complexibilidade, então realizo as seguintes instruções:
// 1.Utilizo a condicional "se/senao".
// 2.Repito a verificações de "Deseja realizar outra operação?" dentro de cada funções. 
//  Uma alternativa era criar uma função para essa verificação.
