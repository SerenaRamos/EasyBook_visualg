algoritmo "Easy_Book"

var
cont_livro, nov, cont2, resp, resp2, cont, opcao, cat, livros, conta, alt,cont_login, num_cartao, ver_cartao: inteiro
resposta, titulo_inserir, sittuacao, pesq, Tent_U, Tent_S, senha_c,tecla, nome_cartao, val_cartao, feedback, tec: caracter
logi, titulo_repetido, login_usuario, login_senha, vet, lencontrado: logico
usuario: vetor [1..10] de caracter
senha: vetor [1..10] de caracter
nome: vetor [1..10] de caracter
email: vetor [1..10] de caracter
cpf: vetor [1..10] de caracter
livro: vetor [1..10] de caracter
nascimento: vetor [1..10] de caracter
tipo: vetor [1..10] de inteiro
titulo: vetor [1..10] de caracter
autor: vetor [1..10] de caracter
categoria: vetor [1..10] de caracter
ano: vetor [1..10] de inteiro
editora: vetor [1..10] de caracter
paginas: vetor [1..10] de inteiro
tamanho: vetor [1..10] de real
sinopse: vetor [1..10] de caracter
situacao : vetor [1..10] de logico
cod: vetor [1..10] de inteiro
msg: vetor [1..10] de caracter
assunto: vetor [1..10] de caracter
nome_assunto: vetor [1..10] de caracter
email_assunto: vetor [1..10] de caracter
cpf1: vetor [1..10] de caracter
cpf2: vetor [1..10] de caracter
cpf3: vetor [1..10] de caracter
cpf4: vetor [1..10] de caracter
dia: vetor [1..10] de caracter
mes: vetor [1..10] de caracter
ano_nasc: vetor [1..10] de caracter
procedimento inicial
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~")
escreval ("")
escreval ("1. Login")
escreval ("")
escreval ("2. Cadastro")
leia (resp)

escolha resp
caso 1
   limpatela
   login

caso 2
   limpatela
   cadastro
fimescolha
fimprocedimento



procedimento login
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("               [ LOGIN ]")
escreval ("")
escreval ("Nome de Usuário: ")
leia (Tent_U)
escreval ("")
escreval ("Senha: ")
leia (Tent_S)

verificacao

limpatela

se login_usuario = falso entao
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
   escreval("             Nome de incorreto!")
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
fimse

se (login_usuario = verdadeiro) e (login_senha = falso) entao
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
   escreval("               Senha incorreta!")
   escreval ("           ~~~~~~~~~~~~~~~~~~~~~")
   escreval ("")
fimse

se (login_usuario = verdadeiro) e (login_senha = verdadeiro) entao

   limpatela
   se tipo[cont_login] = 2 entao
      Admin
   senao
      boasvindas
   fimse

fimse

login
fimprocedimento

procedimento verificacao
inicio

login_usuario <- falso
login_senha <- falso

para cont de 1 ate 10 faca
   se Tent_U = usuario[cont] entao
      login_usuario <- verdadeiro
      se Tent_S = senha[cont] entao
         login_senha <- verdadeiro
         cont_login<-cont
         interrompa
      fimse
   fimse
fimpara
fimprocedimento

procedimento cadastro
inicio
para cont de 1 ate 10 faca
   se usuario[cont] = ""  entao
      vet <- falso
      escreval ("             [ EASY BOOK ]")
      escreval ("             ~~~~~~~~~~~~~")
      escreval ("             [ CADASTRO ]")
      escreval ("")
      escreval ("Nome Completo:")
      leia (nome[cont])
      escreval ("")
      escreval ("Nome de Usuário:")
      leia (usuario[cont])
      escreval ("")
      repita
         escreval ("Email (nome@email.com): ")
         leia (email[cont])

         se pos("@",email[cont]) =0 entao
            escreval ("ATENÇÃO! Email inválido!")
            escreval ("")
         fimse
      ate pos("@", email[cont]) <>0

      escreval ("")
      repita
         escreval ("Data de Nascimento (DDMMAAAA): ")
         leia (nascimento[cont])
         se compr(nascimento[cont-]) <> 8 entao
         escreval ("")
            escreval ("ATENÇÃO! Quantidade de dígitos inválida!")
         senao
            dia[cont] <- copia(nascimento[cont], 1, 2)
            mes[cont] <- copia(nascimento[cont], 3, 2)
            ano_nasc[cont] <- copia(nascimento[cont], 5, 4)
         fimse
      ate compr(nascimento[cont])=8
      escreval ("")
      repita
         escreval ("Informe o CPF (apenas números): ")
         leia (cpf[cont])
         se compr(cpf[cont]) <> 11 entao
         escreval ("")
            escreval ("ATENÇÃO! Quantidade de dígitos inválida!")
         senao
            cpf1[cont] <- copia(cpf[cont], 1, 3)
            cpf2[cont] <- copia(cpf[cont], 4, 3)
            cpf3[cont] <- copia(cpf[cont], 7, 3)
            cpf4[cont] <- copia(cpf[cont], 10,2)
         fimse
      ate compr(cpf[cont])=11

      escreval ("")
      escreval ("Senha: ")
      leia (senha[cont])
      escreval ("")
      escreval ("Confirme sua senha: ")
      leia (senha_c)
      tipo[cont] <- 1
      se senha_c <> senha[cont] entao
         senha[cont] <- ("")
         limpatela
         cadastro2

      fimse

      interrompa
   senao
      vet<-verdadeiro

   fimse
fimpara

se vet = verdadeiro entao
   escreval("A memória está cheia, favor reiniciar o programa!")
   escreval ("Pressione 'Enter' para retornar ao Login.")
   leia (tecla)
   limpatela
   inicial
senao

   limpatela
   escreval ("             [ EASY BOOK ]")
   escreval ("             ~~~~~~~~~~~~~")
   escreval ("             [ CADASTRO ]")
   escreval ("")
   escreval ("Usuário cadastrado com sucesso!")
   escreval ("Pressione 'Enter' para retornar ao Login.")
   leia (tecla)
   limpatela
   inicial
fimse
fimprocedimento


procedimento cadastro2
inicio
senha[cont]<- ""
repita
   escreval ("             [ EASY BOOK ]")
   escreval ("             ~~~~~~~~~~~~~")
   escreval ("             [ CADASTRO ]")
   escreval ("")
   escreval ("Nome Completo: ", nome[cont])
   escreval ("")
   escreval ("Nome de Usuário: ", usuario[cont])
   escreval ("")
   escreval ("Email (nome@email.com): ", email[cont])
   escreval ("")
   escreval ("Nascimento:", dia[cont], "/", mes[cont], "/", ano_nasc[cont])
   escreval ("")
   escreval ("CPF:", cpf1[cont], ".", cpf2[cont], ".", cpf3[cont], "-", cpf4[cont])
   escreval ("")
   escreval ("Senha: ")
   leia (senha[cont])
   escreval ("")
   escreval ("Confirme sua senha: ")
   leia (senha_c)
ate senha[cont] = senha_c
fimprocedimento

procedimento boasvindas
inicio
se tipo[cont_login] = 2 entao
   limpatela
   Admin
fimse


escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ OLÁ, ", maiusc(usuario[cont_login]),"]")
escreval ("")
escreval ("1. Minha Conta")
escreval ("2. Meus Livros")
escreval ("3. Pesquisar")
escreval ("4. Categorias")
escreval ("5. Contato")
escreval ("6. Logout")

leia (opcao)
escolha opcao
caso 1
   limpatela
   minha_conta
caso 2
   limpatela
   meus_livros
caso 3
   limpatela
   pesquisar
caso 4
   limpatela
   categorias
caso 5
   limpatela
   contato
caso 6
   limpatela
   inicial
fimescolha
fimprocedimento

procedimento categorias
inicio
escreval ("             [ EASY BOOK ]")
escreval ("            ~~~~~~~~~~~~~~")
escreval ("            [ CATEGORIAS ]")
escreval ("")
escreval ("")
escreval ("Selecione a categoria que deseja visualizar:")
escreval ("")
escreval ("1. Administração e Negócios")
escreval ("")
escreval ("2. Ficção Científica")
escreval ("")
escreval ("3. Romance")
escreval ("")
escreval ("4. Voltar")
leia (cat)
limpatela

escolha cat
caso 1
   Cat_Adm
caso 2
   Cat_Fic
caso 3
   Cat_Rom
caso 4
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento


procedimento Cat_Adm
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("        [ ADMINISTRAÇÃO E NEGÓCIOS ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("1. |¨¨¨¨¨¨¨¨¨¨¨|              2. |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("   |    A      |                 |   Quem    |")
escreval ("   |  Arte da  |                 | Mexeu no  |")
escreval ("   |  Guerra   |                 |    Meu    |")
escreval ("   |           |                 |  Queijo?  |")
escreval ("   |  Sun Tzu  |                 |S. Johnson |")
escreval ("   |___________|                 |___________|")
escreval ("")
escreval ("Selecione o Livro, ou digite 3. para voltar e 4. Menu")
leia (livros)

escolha livros
caso 1
   limpatela
   Cat_Adm_01
caso 2
   limpatela
   Cat_Adm_02
caso 3
   limpatela
   categorias
caso 4
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Cat_Adm_01
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("        [ ADMINISTRAÇÃO E NEGÓCIOS ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |    A      |")
escreval ("               |  Arte da  |")
escreval ("               |  Guerra   |")
escreval ("               |           |")
escreval ("               |  Sun Tzu  |")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: A Arte da Guerra - Os 13 Capítulos Originais")
escreval ("Autor: Sun Tzu")
escreval ("Ano:     2012")
escreval ("Editora: Geração Editorial/Jardim Dos Livros")
escreval ("Páginas: 160")
escreval ("Tamanho do Arquivo: 1462 Kb")
escreval ("Sinopse: Destaca as técnicas e virtudes essenciais para um bom")
escreval ("         líder vencer seus desafios. Os preceitos são apontados por ")
escreval ("         Sun Tzu,um dos maiores estrategistas militares de todos os ")
escreval ("         tempos, cujas tropas foram invencíveis durante décadas.")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Adm
fimescolha
fimprocedimento

procedimento Cat_Adm_02
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("        [ ADMINISTRAÇÃO E NEGÓCIOS ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |   Quem    |")
escreval ("               | Mexeu no  |")
escreval ("               |    Meu    |")
escreval ("               |  Queijo?  |")
escreval ("               |S. Johsson |")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: Quem Mexeu no Meu Queijo?")
escreval ("Autor: Spencer Johnson")
escreval ("Ano:     2001")
escreval ("Editora: Record")
escreval ("Páginas: 96")
escreval ("Tamanho do Arquivo: 1083 Kb")
escreval ("Sinopse: Nesta história, os personagens se defrontam com mudanças")
escreval ("         inesperadas. Um deles é bem-sucedido, e escreve o que aprendeu")
escreval ("         com sua experiência entre as paredes do labirinto. Suas palavras")
escreval ("         ensinam a lidar com a mudança para viver com menos estresse e")
escreval ("         alcançar mais sucesso no trabalho e na vida pessoal.")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Adm
fimescolha
fimprocedimento

procedimento Cat_Fic
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("            [ FICÇÃO CIENTÍFICA ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("1. |¨¨¨¨¨¨¨¨¨¨¨|              2. |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("   |   Eu,     |                 | A Guerra  |")
escreval ("   |   Robô    |                 | dos Mundos|")
escreval ("   |           |                 |           |")
escreval ("   |  Isaac    |                 |   H. G.   |")
escreval ("   |  Asimov   |                 |   Wells   |")
escreval ("   |___________|                 |___________|")
escreval ("")
escreval ("Selecione o Livro, ou digite 3. para voltar e 4. Menu")
leia (livros)

escolha livros
caso 1
   limpatela
   Cat_Fic_01
caso 2
   limpatela
   Cat_Fic_02
caso 3
   limpatela
   categorias
caso 4
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Cat_Fic_01
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("             [ FICÇÃO CIENTÍFICA ]")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |    Eu,    |")
escreval ("               |   Robô    |")
escreval ("               |           |")
escreval ("               |   Isaac   |")
escreval ("               |   Asimov  |")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: Eu, Robô")
escreval ("Autor: Isaac Asimov")
escreval ("Ano:     2014")
escreval ("Editora: Aleph")
escreval ("Páginas: 320")
escreval ("Tamanho do arquivo: 1372 Kb")
escreval ("Sinopse: Sensíveis, divertidos e instigantes, os contos de Eu, Robô")
escreval ("         são um marco na história da ficção científica, seja pela  ")
escreval ("         introdução das célebres Leis da Robótica, pelos personagens")
escreval ("         inesquecíveis ou por seu olhar completamente novo a respeito")
escreval ("         das máquinas.")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Fic
fimescolha
fimprocedimento


procedimento Cat_Fic_02
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("             [ FICÇÃO CIENTÍFICA ]")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               | A Guerra  |")
escreval ("               | dos Mundos|")
escreval ("               |           |")
escreval ("               |   H. G.   |")
escreval ("               |   Wells   |")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: A Guerra dos Mundos")
escreval ("Autor: H. G. Wells")
escreval ("Ano:     2007")
escreval ("Editora: Alfaguara")
escreval ("Páginas: 240")
escreval ("Tamanho do arquivo: 1465 Kb")
escreval ("Sinopse: Eles vieram do espaço. Com gigantescas máquinas biomecânicas")
escreval ("         querem conquistar a terra e manter os humanos como escravos.")
escreval ("         E a nossa mais avançada tecnologia parece insuficiente para")
escreval ("         conter a expansão do terror pelo planeta. É o começo da pri-")
escreval ("         meira guerra dos humanos contra seres extraterrestres. Como a")
escreval ("         humanidade poderá resistir a um poder bélico tão superior?")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Fic
fimescolha
fimprocedimento

procedimento Cat_Rom
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                 [ ROMANCE ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("1. |¨¨¨¨¨¨¨¨¨¨¨|              2. |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("   |  Crime e  |                 | O Mundo   |")
escreval ("   |  Castigo  |                 | de Sofia  |")
escreval ("   |           |                 |           |")
escreval ("   |  Fiodór   |                 |  Jostein  |")
escreval ("   |Dostoiévski|                 |  Gaarder  |")
escreval ("   |___________|                 |___________|")
escreval ("")
escreval ("Selecione o Livro, ou digite 3. para voltar e 4. Menu")
leia (livros)

escolha livros
caso 1
   limpatela
   Cat_Rom_01
caso 2
   limpatela
   Cat_Rom_02
caso 3
   limpatela
   categorias
caso 4
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento


procedimento Cat_Rom_01
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                 [ ROMANCE ]")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |  Crime e  |")
escreval ("               |  Castigo  |")
escreval ("               |           |")
escreval ("               |  Fiodór   |")
escreval ("               |Dostoiévski|")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: Crime e Castigo")
escreval ("Autor: Fiodór Dostoiévski")
escreval ("Ano:     2013")
escreval ("Editora: Martin Claret")
escreval ("Páginas: 591")
escreval ("Sinopse: Conta a soturna história de um assassino em busca de redenção")
escreval ("         e ressurreição espiritual. Neste livro, Raskólnikov, um jovem")
escreval ("         estudante, pobre e desesperado, perambula pelas ruas de São")
escreval ("         Petersburgo até cometer um crime que tentará justificar por")
escreval ("         uma teoria - grandes homens, como César ou Napoleão, foram")
escreval ("         assassinos absolvidos pela História.")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Rom
fimescolha
fimprocedimento

procedimento Cat_Rom_02
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                 [ ROMANCE ]")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |  O Mundo  |")
escreval ("               | de Sofia  |")
escreval ("               |           |")
escreval ("               |  Jostein  |")
escreval ("               |  Gaarder  |")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: O Mundo de Sofia")
escreval ("Autor: Jostein Gaarder")
escreval ("Ano:     2012")
escreval ("Editora: Companhia das Letras")
escreval ("Páginas: 568")
escreval ("Tamanho do arquivo: 1670 Kb")
escreval ("Sinopse: Às vésperas de completar 15 anos, Sofia Amundsen recebe men-")
escreval ("         sagens anônimas com perguntas intrigantes, como 'quem é você?'")
escreval ("         e 'de onde vem o mundo?'. A partir dessas mensagens, ela se")
escreval ("         torna aluna do misterioso Alberto Knox, que a acompanha em ")
escreval ("         uma fascinante jornada pela história da Filosofia, de Sócrates")
escreval ("         até os dias de hoje, passando pela Idade Média, o Iluminismo,")
escreval ("         a Revolução Francesa e a Revolução Russa.")
escreval ("")
escreval ("")
escreval ("1. Download")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   download
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   Cat_Rom
fimescolha
fimprocedimento

procedimento meus_dados
inicio

escreval ("Nome de Usuário: ",usuario[cont_login])
escreval ("Nome Completo: ",nome[cont_login])
escreval ("Email: ",email[cont_login])
escreval ("Nascimento:", dia[cont_login], "/", mes[cont_login], "/", ano_nasc[cont_login])
escreval ("CPF:", cpf1[cont_login], ".", cpf2[cont_login], ".", cpf3[cont_login], "-", cpf4[cont_login])
escreval ("Senha: ",senha[cont_login])
escreval ("")
interrompa

fimprocedimento

procedimento alterar_pessoais
inicio
escreval ("               [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~~~~~")
escreval ("             [ DADOS PESSOAIS]")
escreval ("")
escreval ("Seus dados atuais são:")
meus_dados
escreval ("")
escreval ("Para alterar:")
escreval ("1. Nome de Usuário")
escreval ("2. Nome Completo")
escreval ("3. Email")
escreval ("4. Senha")
escreval ("5. Voltar.")

leia (alt)

escolha alt
caso 1
   limpatela
   escreval ("               [ EASY BOOK ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Novo nome de usuário:")
   leia (usuario[cont_login])

   limpatela
   alterar_pessoais

caso 2
   limpatela
   escreval ("               [ EASY BOOK ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Novo nome:")
   leia (nome[cont_login])
   limpatela
   alterar_pessoais

caso 3
   limpatela
   escreval ("               [ EASY BOOK ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Novo email: ")
   leia (email[cont_login])

   limpatela
   alterar_pessoais

caso 4
   limpatela
   escreval ("               [ EASY BOOK ]")
   escreval ("             ~~~~~~~~~~~~~~~~~")
   escreval ("             [ DADOS PESSOAIS]")
   escreval ("")
   escreval ("Nova senha:")
   leia (senha[cont_login])

   limpatela
   alterar_pessoais

caso 5
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   minha_conta
fimescolha
fimprocedimento

procedimento pgto
inicio

escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("             [ PAGAMENTO ]")
escreval ("")
escreval ("            Dados do Cartão")
escreval ("")
escreval ("1.Número do cartão (apenas números): ")
leia (num_cartao)
escreval ("")
escreval ("2. Nome do titular do cartão: ")
leia (nome_cartao)
escreval ("")
escreval ("3. Validade do cartão: ")
leia (val_cartao)
escreval ("")
escreval ("4. Insira o código de verificação do cartão: ")
leia (ver_cartao)
escreval ("")
escreval ("")
escreval ("Para confirmar o pagamento pressione 'Enter'.")
leia (tecla)
limpatela
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("             [ PAGAMENTO ]")
escreval ("")
escreval ("Pagamento realizado com sucesso!")
escreval ("Pressione 'Enter para retornar ao Menu.")
leia (tec)

limpatela
boasvindas
fimprocedimento

procedimento cancelar
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("             [ MINHA CONTA ]")
escreval ("")
escreval ("              Cancelamento")
escreval ("")
escreval ("Antes de nos deixar, nos envie um feedback: ")
leia (feedback)
escreval ("")
escreval ("Pressione 'Esc' para sair.")

fimprocedimento

procedimento minha_conta
inicio

escreval ("              [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~~~")
escreval ("             [ MINHA CONTA ]")
escreval ("")
escreval ("1. Dados pessoais")
escreval ("2. Pagamento")
escreval ("3. Cancelar conta")
escreval ("4. Menu")
leia (conta)

escolha conta
caso 1
   limpatela
   alterar_pessoais
caso 2
   limpatela
   pgto
caso 3
   limpatela
   cancelar
caso 4
   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento meus_livros
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                [ MEUS LIVROS ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("1. |¨¨¨¨¨¨¨¨¨¨¨|     2. |¨¨¨¨¨¨¨¨¨¨¨|     3. |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("   |  Crime e  |        |   A Arte  |        |           |")
escreval ("   |  Castigo  |        | da Guerra |        |  Eu, Robô |")
escreval ("   |           |        |           |        |           |")
escreval ("   |  Fiodór   |        |           |        |   Isaac   |")
escreval ("   |Dostoiévski|        |  Sun Tzu  |        |   Asimov  |")
escreval ("   |___________|        |___________|        |___________|")
escreval ("")
escreval ("Selecione o Livro ou 4- para voltar: ")
leia (livros)

escolha livros
caso 1
   cont_livro <- 2
   limpatela

   Meus_Livros_01
caso 2
   cont_livro <- 6
   limpatela

   Meus_Livros_02
caso 3
   cont_livro <- 4
   limpatela
   Meus_Livros_03
outrocaso
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Meus_Livros_01
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                [ MEUS LIVROS ]")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |  Crime e  |")
escreval ("               |  Castigo  |")
escreval ("               |           |")
escreval ("               |  Fiodór   |")
escreval ("               |Dostoiévski|")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: Crime e Castigo")
escreval ("Autor: Fiodór Dostoiévski")
escreval ("Ano:     2013")
escreval ("Editora: Martin Claret")
escreval ("Páginas: 591")
escreval ("Sinopse: Conta a soturna história de um assassino em busca de redenção")
escreval ("         e ressurreição espiritual. Neste livro, Raskólnikov, um jovem")
escreval ("         estudante, pobre e desesperado, perambula pelas ruas de São")
escreval ("         Petersburgo até cometer um crime que tentará justificar por")
escreval ("         uma teoria - grandes homens, como César ou Napoleão, foram")
escreval ("         assassinos absolvidos pela História.")
escreval ("")
escreval ("")
escreval ("1. Ler/Ouvir")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   tela_leitura
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Meus_Livros_03
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("                [ MEUS LIVROS ]")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |    Eu,    |")
escreval ("               |   Robô    |")
escreval ("               |           |")
escreval ("               |   Isaac   |")
escreval ("               |   Asimov  |")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: Eu, Robô")
escreval ("Autor: Isaac Asimov")
escreval ("Ano:     2014")
escreval ("Editora: Aleph")
escreval ("Páginas: 320")
escreval ("Tamanho do arquivo: 1372 Kb")
escreval ("Sinopse: Sensíveis, divertidos e instigantes, os contos de Eu, Robô")
escreval ("         são um marco na história da ficção científica, seja pela  ")
escreval ("         introdução das célebres Leis da Robótica, pelos personagens")
escreval ("         inesquecíveis ou por seu olhar completamente novo a respeito")
escreval ("         das máquinas.")
escreval ("")
escreval ("")
escreval ("1. Ler/Ouvir")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   tela_leitura
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse


   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento Meus_Livros_02
inicio
escreval ("                [ EASY BOOK ]")
escreval ("        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval ("               [ MEUS LIVROS ]")
escreval ("")
escreval ("")
escreval ("")
escreval ("               |¨¨¨¨¨¨¨¨¨¨¨|")
escreval ("               |    A      |")
escreval ("               |  Arte da  |")
escreval ("               |  Guerra   |")
escreval ("               |           |")
escreval ("               |  Sun Tzu  |")
escreval ("               |___________|")
escreval ("")
escreval ("")
escreval ("Título: A Arte da Guerra")
escreval ("Autor: Sun Tzu")
escreval ("Ano:     2012")
escreval ("Editora: Geração Editorial/Jardim Dos Livros")
escreval ("Páginas: 160")
escreval ("Tamanho do Arquivo: 1462 Kb")
escreval ("Sinopse: Destaca as técnicas e virtudes essenciais para um bom")
escreval ("         líder vencer seus desafios. Os preceitos são apontados por ")
escreval ("         Sun Tzu,um dos maiores estrategistas militares de todos os ")
escreval ("         tempos, cujas tropas foram invencíveis durante décadas.")
escreval ("")
escreval ("")
escreval ("1. Ler/Ouvir")
escreval ("2. Voltar")
leia (resp2)
escolha resp2
caso 1
   limpatela
   tela_leitura
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento contato
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ CONTATO ]")
escreval ("")

para cont de 1 ate 10 faca
   se usuario[cont] <> "admin" entao
      se assunto[cont] = "" entao
         escreval ("Assunto: ")
         leia (assunto[cont])
         escreval ("")
         escreval ("Nome: ")
         leia (nome_assunto[cont])
         escreval ("")
         escreval("Email: ")
         leia (email_assunto[cont])
         escreval ("")
         escreval ("Mensagem: ")
         leia (msg[cont])
         escreval ("")
         interrompa
      fimse
   fimse
fimpara

escreval ("Pressione 'Enter' para enviar.")
leia (tec)
limpatela

escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ CONTATO ]")
escreval ("")
escreval ("Sua mensagem foi enviada com sucesso.")
escreval ("Pressione 'Enter' para retornar ao Menu.")
leia (tec)

limpatela
boasvindas
fimprocedimento

procedimento notificacao
inicio
escreval ("                  [EASY BOOK]")
escreval ("                ~~~~~~~~~~~~~~~~")
escreval ("                [ NOTIFICAÇÕES ]")
escreval ("")

escreval ("--- Não Lidas ---")
para cont de 1 ate 10 faca
   se usuario[cont] <> "admin" entao
      se usuario[cont] <> "" entao
         escreval ("")
         escreval ("| Cód. |",  cont," |" )
         escreval ("| Usuário |", usuario[cont], " |")
         escreval ("| Email |", email[cont], " |")
         escreval ("| Mensagem |", msg[cont], " |")
         escreval ("| RESPONDER |")
         escreval ("")
         escreval ("---------------------------------------")
      fimse
   fimse
fimpara
escreval ("")
escreval ("")
escreval ("Pressione 'Enter' para retonar ao Menu.")
leia (tecla)

limpatela
Admin
fimprocedimento

procedimento download
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ DOWNLOAD ]")
escreval ("")
escreval (" Aguarde enquanto o download é finalizado.")
escreval ("")

timer (1500)
escreval ("                        .")
escreval ("                        .")
escreval ("                        .")
escreval ("                        .")
timer (0)

limpatela
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ DOWNLOAD ]")
escreval ("")
escreval ("           Download finalizado!")
escreval ("1. Ler/ouvir")
escreval ("")
escreval ("2. Para voltar ao Menu.")
leia (resp)

escolha resp
caso 1
   limpatela
   tela_leitura
caso 2
   se tipo[cont_login] = 2 entao
      limpatela
      Admin
   fimse

   limpatela
   boasvindas
fimescolha
fimprocedimento

procedimento tela_leitura
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("")
escreval ("")
escreval ("          [ ", maiusc(titulo[cont_livro]), "]")
escreval ("")
escreval ("")
escreval (              "CAPÍTULO 1")
escreval ("     Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas")
escreval ("porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies,")
escreval ("purus lectus malesuada libero, sit amet commodo magna eros quis urna.")
escreval ("Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus."  )
escreval ("")
escreval ("")
escreval ("Aperte o 'Play' para começar a ouvir.")
escreval ("Pressione 'Enter' para retornar o Menu.")
leia (tec)

se tipo[cont_login] = 2 entao
   limpatela
   Admin
fimse

limpatela
boasvindas
fimprocedimento

procedimento pesquisar
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("             [ PESQUISAR ]")
escreval ("")
escreval ("Digite o nome do livro:")
leia (pesq)

para cont de 1 ate 10 faca
   se pesq = livro[cont] entao
      lencontrado <- verdadeiro
      cont_livro <- cont
      interrompa
   senao
      lencontrado<-falso
   fimse
fimpara

limpatela
se lencontrado = verdadeiro entao
   limpatela
   se livro[cont] = "Crime e Castigo" entao
      Cat_Rom_01
   senao
      se livro[cont] = "O Mundo de Sofia" entao
         Cat_Rom_02
      senao
         se livro[cont] = "A Arte da Guerra" entao
            Cat_Adm_01
         senao
            se livro[cont] = "Quem Mexeu no Meu Queijo?" entao
               Cat_Adm_02
            senao
               se livro[cont] = "Eu, Robô" entao
                  Cat_Fic_01
               senao
                  se livro[cont] = "A Guerra dos Mundos" entao
                     Cat_Fic_02
                  senao
                     escreval ("             [ EASY BOOK ]")
                     escreval ("             ~~~~~~~~~~~~~")
                     escreval ("             [ PESQUISAR ]")
                     escreval ("")
                     escreval ("Livro encontra-se em nosso sistema, porém a página não está completa")
                     escreval ("Aguarde que logo estará disponível.")
                     escreval ("Pressione 'Enter' para retornar ao Menu")
                     leia (tecla)
                     limpatela
                     Admin
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse

se lencontrado = falso entao
   escreval ("Ainda não temos este livro no Sistema. Envie uma mensagem para o Admnistrador.")
fimse

escreval ("")
escreval ("Pressione 'Enter' para voltar")
leia (tec)
se tipo[cont_login] = 2 entao
   limpatela
   Admin
fimse

limpatela
boasvindas
fimprocedimento

procedimento Admin
inicio
escreval ("             [ EASY BOOK ]")
escreval ("             ~~~~~~~~~~~~~")
escreval ("              [ OLÁ, ", maiusc(usuario[cont_login]),"]")
escreval ("")
escreval ("1. Dados Pessoais")
escreval ("2. Pesquisar")
escreval ("3. Categorias")
escreval ("4. Alterar dados de livros")
escreval ("5. Excluir livros")
escreval ("6. Inserir livros novos")
escreval ("7. Liberação de Usuário")
escreval ("8. Notificações")
escreval ("9. Logout")
leia (opcao)

escolha opcao
caso 1
   limpatela
   alterar_pessoais
caso 2
   limpatela
   pesquisar
caso 3
   limpatela
   categorias
caso 4
   limpatela
   alterar
caso 5
   limpatela
   excluir
caso 6
   limpatela
   inserir
caso 7
   limpatela
   liberar
caso 8
   limpatela
   notificacao
caso 9
   limpatela
   inicial
fimescolha
fimprocedimento

procedimento liberar
inicio
escreval ("            [EASY BOOK]")
escreval ("          ~~~~~~~~~~~~~~~~")
escreval ("            [ LIBERAÇÃO ]")
escreval ("")
para cont de 1 ate 5 faca
   cod[cont]<- cont


   se situacao[cont] = verdadeiro entao
      sittuacao <- "pendente"
   senao
      sittuacao <- "pago"
   fimse
   se usuario[cont] <> "" entao

      escreval ("| Cód. |", cod[cont], " |")
      escreval ("| Nome de Usuário |" , usuario[cont]," |")
      escreval ("| CPF |",cpf[cont]," |")
      escreval ("| Situação | ",sittuacao," |")
   fimse
fimpara

escreval ("")
escreval ("")
escreval ("1. Liberar acesso")
escreval ("2. Limitar acesso")
escreval ("3. Voltar")
leia (resp)
escolha resp
caso 1
   limpatela
   escreval ("            [EASY BOOK]")
   escreval ("          ~~~~~~~~~~~~~~~~")
   escreval ("            [ LIBERAÇÃO ]")
   escreval ("")
   escreval ("Em construção. Pressione 'Enter' para retornar ao Menu")
   leia (tecla)
   limpatela
   Admin
caso 2
   limpatela
   escreval ("            [EASY BOOK]")
   escreval ("          ~~~~~~~~~~~~~~~~")
   escreval ("            [ LIBERAÇÃO ]")
   escreval ("")
   escreval ("Em construção. Pressione 'Enter' para retornar ao Menu.")
   leia (tecla)
   limpatela
   Admin
caso 3
   limpatela
   Admin
fimescolha
fimprocedimento

procedimento alterar
inicio
escreval ("            [EASY BOOK]")
escreval ("         ~~~~~~~~~~~~~~~~~")
ESCREVAL ("            [ ALTERAR ]")
escreval ("")
escreval ("Informe o título do livro que deseja alterar os dados:")
leia (pesq)

escreval ("")
escreval ("")
para cont de 1 ate 10 faca
   se pesq = titulo[cont] entao

      escreval ("Selecione o dado que deseja alterar:")
      escreval ("1. Título")
      escreval ("2. Autor")
      escreval ("3. Categoria")
      escreval ("4. Ano")
      escreval ("5. Editora")
      escreval ("6. Páginas")
      escreval ("7. Tamanho do arquivo")
      escreval ("8. Sinopse")
      escreval ("9. Voltar")
      escreval ("")
      leia (alt)

      escreval ("")
      escreval ("")
      escolha alt
      caso 1
         escreval ("Título: ")
         leia (titulo[cont])
         limpatela
         sucesso
      caso 2
         escreval ("Autor: ")
         leia (autor[cont])
         limpatela
         sucesso
      caso 3
         escreval ("Categoria: ")
         leia (categoria[cont])
         limpatela
         sucesso
      caso 4
         escreval ("Ano: ")
         leia (ano[cont])
         limpatela
         sucesso
      caso 5
         escreval ("Editora: ")
         leia (titulo[cont])
         limpatela
         sucesso
      caso 6
         escreval ("Páginas: ")
         leia (paginas[cont])
         limpatela
         sucesso
      caso 7
         escreval ("Tamanho do arquivo(Kb): ")
         leia (tamanho[cont])
         limpatela
         sucesso
      caso 8
         escreval ("Sinopse: ")
         leia (sinopse[cont])
         limpatela
         sucesso
      caso 9
         Admin
      fimescolha
      log <- verdadeiro
      interrompa
   senao
      logi <- falso

   fimse
fimpara
se logi = falso entao
   limpatela
   escreval ("            [EASY BOOK]")
   escreval ("         ~~~~~~~~~~~~~~~~~")
   ESCREVAL ("             [ ALTERAR ]")
   escreval ("")
   escreval ("Livro não está cadastrado.")
   escreval("1. Retornar                   2. Inserir um novo livro")
   leia(resp)

   escolha resp
   caso 1
      limpatela
      alterar
   caso 2
      limpatela
      inserir
   fimescolha
fimse

fimprocedimento

procedimento sucesso
inicio
escreval ("            [EASY BOOK]")
escreval ("          ~~~~~~~~~~~~~~~~~")
escreval ("")
escreval ("")
escreval ("   Dados alterados/excluídos com sucesso!")
escreval ("")
escreval ("1. Modificar outro dado")
escreval ("2. Excluir outro livro")
escreval ("3. Menu")
leia (resp)

escolha resp
caso 1
   limpatela
   alterar
caso 2
   limpatela
   excluir
caso 3
   limpatela
   Admin
fimescolha
fimprocedimento

procedimento excluir
inicio
escreval ("            [EASY BOOK]")
escreval ("         ~~~~~~~~~~~~~~~~~")
ESCREVAL ("            [ EXCLUIR ]")
escreval ("")
escreval ("Informe o título do livro que deseja excluir:")
leia (pesq)

escreval ("")
escreval ("")
para cont de 1 ate 10 faca
   se pesq = titulo[cont] entao

      escreval ("Título: ", titulo[cont])
      escreval ("Autor: ", autor[cont])
      escreval ("Categoria: ", categoria[cont])
      escreval ("Ano:", ano[cont])
      escreval ("Editora: ", editora[cont])
      escreval ("Páginas: ", paginas[cont])
      escreval ("Tamanho do arquivo (Kb): ", tamanho[cont])
      escreval ("Sinopse: ", sinopse[cont])

      escreval ("")
      escreval ("")
      escreval ("Deseja excluir os dados? (S/N)")
      leia (resposta)

      se resposta = "S" entao
         titulo[cont] <- ""
         autor[cont] <- ""
         categoria[cont] <- ""
         ano[cont] <- 0
         editora[cont] <- ""
         paginas[cont] <- 0
         tamanho[cont] <- 0
         sinopse[cont] <- ""

         limpatela
         sucesso
      senao
         limpatela
         Admin
      fimse
   fimse
fimpara
fimprocedimento


procedimento inserir
inicio
escreval ("            [EASY BOOK]")
escreval ("          ~~~~~~~~~~~~~~~~~")
escreval ("             [ INSERIR ]")
escreval ("")
para cont de 1 ate 10 faca
   se titulo[cont] = "" entao
      escreval ("Insira o título: ")
      leia (titulo_inserir)
      escreval ("")
      titulo_repetido <- falso
      para cont2 de 1 ate 10 faca
         se titulo_inserir = titulo[cont2] entao
            limpatela
            titulo_repetido < - verdadeiro
            interrompa
         fimse
      fimpara
      se titulo_repetido = verdadeiro entao
         escreval ("Título já existe! Pressione'Enter' para cadastrar um novo título.")
         leia (tecla)
         limpatela
         inserir
      senao
         titulo[cont] <- titulo_inserir
         livro[cont] <- titulo_inserir
      fimse
      escreval ("Insira o nome do Autor: ")
      leia (autor[cont])
      escreval ("")
      escreval ("Insira o ano: ")
      leia (ano[cont])
      escreval ("")
      escreval ("Insira a categoria: ")
      leia (categoria[cont])
      escreval ("")
      escreval ("Insira a editora: ")
      leia (editora[cont])
      escreval ("")
      escreval ("Insira o número de páginas: ")
      leia (paginas[cont])
      escreval ("")
      escreval ("Insira o tamanho do arquivo (Kb): ")
      leia (tamanho[cont])
      escreval ("")
      escreval ("Insira a sinopse: ")
      leia (sinopse[cont])
      escreval ("")
      interrompa
   fimse
fimpara

limpatela
escreval ("            [EASY BOOK]")
escreval ("          ~~~~~~~~~~~~~~~~~")
escreval ("             [ INSERIR ]")
escreval ("")
escreval ("Dados cadastrados com sucesso!")
escreval ("Pressione 'Enter' para voltar.")
leia (tecla)

limpatela
Admin
fimprocedimento

inicio

usuario[1] <- "admin"
cpf[1] <- "10101010101"
situacao[1] <- verdadeiro
email[1] <- "admin@teste.com"
msg[1] <- "teste."
senha[1] <- "admin"
tipo[1] <- 2
//
livro[1] <- "O Mundo de Sofia"
titulo[1] <- "O Mundo de Sofia"
autor[1] <- "Jostein Gaarder"
categoria[1] <- "Romance"
ano[1] <- 2012
editora[1] <- "Companhia das Letras"
paginas[1] <- 568
tamanho[1] <- 1670
sinopse[1] <- "Às vésperas de completar 15 anos, Sofia Amundsen recebe mensagens anônimas"
//
livro[2] <- "Crime e Castigo"
titulo[2] <- "Crime e Castigo"
autor[2] <- "Fiodór Dostoiévski"
categoria[2] <- "Romance"
ano[2] <- 2013
editora[2] <- "Martin Claret"
paginas[2] <- 591
tamanho[2] <- 1300
sinopse[2] <- "Conta a soturna história de um assassino em busca de redenção"
//
livro[3] <- "A Guerra dos Mundos"
titulo[3] <- "A Guerra dos Mundos"
autor[3] <- "H. G. Wells"
categoria[3] <- "Ficção Científica"
ano[3] <- 2007
editora[3] <- "Alfaguara"
paginas[3] <- 240
tamanho[3] <- 1465
sinopse[3] <- "Eles vieram do espaço."
//
livro[4] <- "Eu, Robô"
titulo[4] <- "Eu, Robô"
autor[4] <- "Isaac Asimov"
categoria[4] <- "Ficção Científica"
ano[4] <- 2014
editora[4] <- "Aleph"
paginas[4] <- 320
tamanho[4] <- 1372
sinopse[4] <- "Sensíveis, divertidos e instigantes, os contos de Eu, Robô"
//
livro[5] <- "Quem Mexeu no Meu Queijo?"
titulo[5] <- "Quem Mexeu no Meu Queijo?"
autor[5] <- "Spencer Johnson"
categoria[5] <- "Administração"
ano[5] <- 2001
editora[5] <- "Record"
paginas[5] <- 96
tamanho[5] <- 1083
sinopse[5] <- "Nesta história, os personagens se defrontam com mudanças"
//
livro[6] <- "A Arte da Guerra"
titulo[6] <- "A Arte da Guerra"
autor[6] <- "Sun Tzu"
categoria[6] <- "Administração"
ano[6] <- 2012
editora[6] <- "Geração Editorial/Jardim Dos Livros"
paginas[6] <- 160
tamanho[6] <- 1462
sinopse[6] <- "Destaca as técnicas e virtudes essenciais para um bom"
//
usuario[2] <- "Marcos"
cpf[2] <- "11111111100"
cpf1[2] <- "111"
cpf2[2] <- "111"
cpf3[2] <- "111"
cpf4[2] <-  "00"
situacao[2] <- verdadeiro
email[2] <- "usuario1@teste.com"
dia[2] <- "01"
mes[2] <- "09"
ano_nasc[2] <- "1991"
senha[2] <- "123"
tipo[2] <- 1
//
usuario[3] <- "Joana"
cpf[3] <- "10101010101"
cpf1[3] <- "101"
cpf2[3] <- "010"
cpf3[3] <- "101"
cpf4[3] <-  "01"
situacao[3] <- falso
email[3] <- "usuario2@teste.com"
msg[3] <- "teste."
dia[3] <- "03"
mes[3] <- "06"
ano_nasc[3] <- "1984"
senha[3] <- "321"
tipo[3] <- 1

inicial

fimalgoritmo



