Dificuldades encontradas
1. Configurando o ambiente de desenvolvimento
No início, foi um desafio entender como estruturar adequadamente os diretórios locais do projeto.

A navegação entre a WSL e o VS Code causou confusão ao reabrir o terminal ou ao aceder à pasta correta.

Descobrir como confirmar que ramo ou repositório Git estava ativo no VS Code demorou algum tempo.

2. Configuração e uso do Docker
Depois de instalar o Docker, os problemas de integração do WSL fizeram com que o Docker Desktop não iniciasse corretamente, exigindo uma reinicialização completa do sistema.

A execução da compilação do Docker falhou inicialmente devido a ficheiros em falta ou contexto incorreto.

O contentor foi executado, mas o acesso ao index.html através do browser não funcionou no início porque o mapeamento de portas ou o caminho do ficheiro estava errado.

3. GitHub Actions e integração do DockerHub
Compreender onde adicionar segredos do DockerHub no GitHub (segredos de repositório vs segredos de ambiente) foi inicialmente confuso.

Configurar o arquivo de fluxo de trabalho do GitHub Actions corretamente para autenticar com o DockerHub e fazer push da imagem exigiu várias tentativas.

4. Terraform e LocalStack
O arquivo main.tf funcionou apenas depois de ajustar o bloco do provedor AWS para se alinhar com os requisitos do LocalStack.

O Terraform lançou repetidamente erros InvalidClientTokenId até que sinalizadores como skip_requesting_account_id fossem adicionados.

O ECS não é compatível com o LocalStack Community Edition, o que bloqueou a criação do recurso aws_ecs_cluster localmente.

Entender que os exemplos da documentação do provedor AWS do Terraform pressupõem o uso do AWS real, e não do LocalStack, foi um insight importante.
