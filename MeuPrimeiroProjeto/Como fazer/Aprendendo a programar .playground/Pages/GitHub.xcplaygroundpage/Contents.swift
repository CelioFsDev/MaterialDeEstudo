import Foundation
/*
1- Primeiro fui em Xcode preferences
2- Depois fui em Accounts e adicionei minha conta GitHub
3- Criei uma chave SSH no no terminal do mac usando o comando:
(ssh-keygen -t ed25519 -C "your_email@example.com") coloca o email da conta do github
4- Depois busca o id da chave pelo terminal usando comando:
(ls -al ~/.ssh) esse comando verifica se existe uma chave
5- E o comando para  entra na pasta do ssh (ssh cd ~/.ssh)
6- Depois de entrar na pasta do ssh eu coloco (ls) para buscar a chave criada
7- Logo apos para capturar a chave coloca no console o comando (cat id_ed25519)
8- Depois de colocar o comando do item 7 aparecera a chave ssh
9- Depois de pegar a chave ssh vai no github https://github.com/settings/keys
10- Vai em new Key e coloca um nome e a chave capiturada no item 7/8
11- Ai agora ja pode criar um repositorio direto pelo github ou entrar em um projeto e vincular criando um novo repositorio pelo proprio xcode
 11.1- Para criar um repositorio por um projeto ja existente no pc, entre no projeto vai na aba Show the Source Control, depois em remotes não tera nada, cliQue com botom direito.
 11.2- Depois aparecera new remote clica nele e cria um repositorio direto no github,
 11.3 Feito isso ja consegue commitar pelo Source Control e da um push
 11.4 Com isso os arQuivos ja estara no github
*/

//Criei um repositorio no github
/*
Repositorio
https://github.com/CelioFsDev/Como-fazer.git 
*/
