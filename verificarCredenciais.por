programa {

  cadeia nomeUsuario = "admin123", senhaUsuario = "123456", usuario, senha
  inteiro numeroMaximotentativas = 3, numeroAtualTentativa = 1

  funcao inicio() {
    login()
  }

  funcao login(){
    escreva("Tentativa: (", numeroAtualTentativa, "/3).")
    escreva("\nUsuario: ")
    leia(usuario)
    escreva("Senha: ")
    leia(senha)
    verificarCredenial()
  }

  funcao verificarCredenial(){
    se (usuario == nomeUsuario e senha == senhaUsuario){
      escreva("\nVocê esta logado no sistema, ", nomeUsuario, ".\n")
    }senao{ 
      se (numeroAtualTentativa < numeroMaximotentativas){

        numeroAtualTentativa = numeroAtualTentativa + 1
        escreva("\n!!! Usuario ou senha incorretos !!!\n")
        escreva("\n")
        inicio()
      
      }senao{
        escreva("\n!!!! Seu usuario foi bloqueado.!!!!\n")
      }
    }
  }
}

//Sistema de login com verificacao de credenciais. Se as credenciais estiverem erradas em 3 tentativas, bloqueia o usuario.