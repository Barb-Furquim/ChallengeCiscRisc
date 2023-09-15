programa {

  // Arredondar valor
  inclua biblioteca Matematica

  real valorDolar = 4.87
  real valorEuro = 5.19
  real valorLibra = 6.03
  real valor
  cadeia opcao

  funcao inicio() {


    escreva("\nDigite o valor desejado: ")
    leia(valor)
    escreva("\n1)Dolar americano \n2)Euro \n3)Libra \nPara qual moeda você deseja converter: ")
    leia(opcao)

    escolha(opcao){
      caso "1":
      converteDolarAmericano()
      pare
      
      caso "2":
      converteEuro()
      pare

      caso "3":
      converterlibra()
      pare

      caso contrario:
      escreva("\nVoce digitou uma opcao invalida. Tente novamente.\n")
      inicio()
    }

  }

  funcao converteDolarAmericano(){
    real valorConvertido = valor / valorDolar
    valorConvertido = Matematica.arredondar(valorConvertido, 2)
    escreva("\nO valor: R$", valor, " convertido em dolar americano fica: U$", valorConvertido, ".\n")

  }

  funcao converteEuro(){
    real valorConvertido = valor / valorEuro
    valorConvertido = Matematica.arredondar(valorConvertido, 2)
    escreva("\nO valor: R$", valor, " convertido em euro fica: EUR ", valorConvertido, ".\n")

  }

  funcao converterlibra(){
    real valorConvertido = valor / valorLibra
    valorConvertido = Matematica.arredondar(valorConvertido, 2)
    escreva("\nO valor: R$", valor, " convertido em libra fica: ", valorConvertido, ".\n")

  }
}

//Crie um conversor de moedas que permite o usuario digitar o valor que deseja converter e de a opcao de 3 moedas internacionais