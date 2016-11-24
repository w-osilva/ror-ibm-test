# O que daria para otimizar (na minha opnião)

## O que poderia ser melhorado no armazenamento?
Uma das premissas do teste era armazenar no banco sqlite, este por sua vez não é um SGBD indicado para grandes volumes de dados e na medida que for crescendo, teremos problemas de performance.

Como alternativa poderia ser utilizado o MySql ou Postgres. Para a escolha deveria ser avaliada questões de infraestrutura, politica da empresa, backups/replicação, etc.

## O que poderia ser melhorado na aplicação?
No processo de importação "full" (através do csv) temos um processamento síncrono e na medida que tal arquivo cresça, o processo de importação tende a demorar mais.

Uma alternativa seria abrir Threads para processar cada linha do arquivo CVS ou então enviar para algum "Worker" que processaria os dados (talvez algum sistema de filas).
 
Outra alternativa seria fornecer um recurso REST (API) que receberia os dados de **apenas uma linha** do arquivo csv e armazenaria o conteudo. Assim, a rake task ficaria responsável pela leitura do arquivo e iteração nas linhas, fazendo o POST dos dados de cada uma.

## O que poderia ser feito para escalar a aplicação?
Poderia ser analisada a possibilidade de utilização do memcached ou redis para fornecer os dados apresentados nas views.
 
Também podemos subir mais "instâncias" da aplicação através do webserver (puma) que consegue gerenciar o numero de instâncias por núcleo (processador) e processar/responder mais requisições (em outras palavras conseguiria processar uma carga maior de requisições).

## Conclusão
Esses foram alguns pontos, mas acredito que ainda existem muitas outras possibilidades a ser exploradas, afinal o que não faltam são técnicas para otimizar aplicações, sejam através de gerenciadores de filas, indexadores de busca, camadas de cache, espelhamento de aplicações, espelhamento de máquinas, e por aí vai...

O ideal é que a arquitetura seja sempre pensada no MVP, avaliando "quem vai utilizar", "qual a carga que precisa suportar", "qual o tempo de resposta que precisa ter", etc... Afinal não acho muito legal usar um canhão para matar uma formiga. ¯\\_(ツ)_/¯


 
