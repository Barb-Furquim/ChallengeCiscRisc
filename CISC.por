programa {

  real deposito, valorSaque, saldoAtual
  cadeia opcao, novaOperacao
  real saldo = 600

  funcao inicio() {

    escreva("\nMenu:")
    escreva("\n1) Dep�sito \n2) Saque \n3) Consultar saldo \n4) Sair da opera��o \n5) Repetir menu \nEscolha uma das op��es: ")
    leia(opcao)

    // se o usu�rio digitar uma op��o inv�lida.
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
        escreva("\nVoc� saiu da opera��o.\n")
      }
      senao se (opcao == 5){
        inicio()
      }
    }senao{
      escreva("\nVoc� digitou uma op��o inv�lida, escolha novamente.\n")
      inicio()
    }
  }

  funcao deposito (){

    escreva("\nDigite o valor desejado para dep�sito: ") 
    leia(deposito)

    // atribui � vari�vel "saldo" o valor do dep�sito + o saldo j� existente.
    saldo = deposito + saldo
    escreva("\nSeu saldo atual �: " + saldo + " reais.\n")  
    escreva("\nDeseja realizar outra opera��o s/n? ")
    leia (novaOperacao)

    // se o usu�rio deseja realizar outra opera��o.
    se(novaOperacao == "s"){
      retorne inicio()
    }
  }

  funcao saque(){

    escreva("\nDigite o valor do saque: ")
      leia(valorSaque)

      // se o valor do saque � menor ou igual ao saldo.
      se (valorSaque <= saldo){
        
        saldo = saldo - valorSaque
        escreva("\nSeu saldo atual agora �: ", saldo,  " reais.\n")
        escreva("\nDeseja realizar outra opera��o s/n? ")
        leia (novaOperacao)

        // se o usu�rio deseja realizar outra opera��o.
        se (novaOperacao == "s"){
          retorne inicio()
        }
      }

      // se o valor do saque � maior que o saldo.
      senao{

        escreva("\nVoc� n�o possui saldo suficiente para saque. Deseja repetir a opera��o s/n? ")
        leia (novaOperacao)

        // repetir opera��o
        se (novaOperacao == "s"){
          retorne saque()
        }
    }
  }

  funcao consultaSaldo(){
    escreva("\nSeu saldo atual �: ", saldo, ".\n")
    escreva("\nDeseja realizar outra opera��o s/n? ")
    leia (novaOperacao)
      se (novaOperacao == "s"){
        retorne inicio()
      }
  }
}

// Programa para realizar fun��es de transa��es banc�rias, desenvolvido visando a arquitetura CISC.
// Permite ter um n�vel maior de complexibilidade, ent�o realizo as seguintes instru��es:
// 1.Utilizo a condicional "se/senao".
// 2.Repito a verifica��es de "Deseja realizar outra opera��o?" dentro de cada fun��es. 
//  Uma alternativa era criar uma fun��o para essa verifica��o.
