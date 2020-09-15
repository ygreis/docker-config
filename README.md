## Configurações Docker

- [Começando](#comecando)
  - [Instalação no windows](#instalacao-windows)
  - [Configuração pro laravel](#configuracoes-laravel)
  
  
## <a name="comecando">Começando</a>
Este é uma repositório com o objetivo de documentar e anexar a instalação e preparão de um ambiente de desenvolvimento usando o docker.

### <a name="instalacao-windows">Instação no windows</a>
Esses passos foram realizados no windows 10 Pro Versão 2004.
1. Instale o [kernel do linux](https://docs.microsoft.com/pt-br/windows/wsl/wsl2-kernel) no windows.
2. Instale o [Docker](https://docs.docker.com/docker-for-windows/install/).
3. Vá na barra de busca do windows e digite `Ativar ou desativar recursos do windows` e habilite:
   1. Hyper-V
   2. Contâiner
4. Inicie o docker, depois vá na barra de tarefas no canto inferior direito do windows e clique no docker, e verifique se tem a opção "Switch to windows container", se estiver assim, significa que está usando os containers do linux, essa é a forma correta, caso não esteja assim clique em "Swith to Linux Containers". 
5. Configure a memória e o processador do seu gosto. Porque as vezes os processos demora demais para serem executados. Então, poderá realizar umas das etapas abaixo.
   1. Clique no docker na barra de tarefas igual na etapa 4, depois em `Configurações`, `Resources` e `Advanced`.
   2. Caso não tenha a aba `Advanced`, poderá configurar realizando [comandos](https://docs.docker.com/config/containers/resource_constraints/). Ou poderá criar um arquivo para as [Configurações wsl](https://docs.microsoft.com/en-us/windows/wsl/release-notes#build-18945).
   3. A etapa que recomendo, é desabilitar o wsl2 no docker, para isso, vá ao docker, seguindo a etapa 4, depois vá em `General` e desmarque a opção "Use the SWL2 based engine".

Você pode também criar um arquivo `setup.sh` para quando executado, instale seu ambiente de desenvolvimento. [Exemplo utilizado para o laravel](./ops/setup.sh).
Porém, nesses arquivos, você precisa usar o comando "winpty" na frente. Exemplo:

``winpty docker-compose exec app composer install``

### <a name="configuracoes-laravel">Configuração pro laravel</a>

Crie um arquivo `.dockerignore` e cole o código abaixo:

```
/node_modules
/vendor

```