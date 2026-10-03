# Survibão 3: Arquitetura 92

A organização básicamente possui essas **5 camadas**:
- Funções auxiliares
- Habilidades/Efeitos
- Sensores
- Clientes
- Moderador

---

### Funções Auxiliares

As funções auxiliares são básicamente operações ou métodos com o objetivo de processar dados, exemplos de suas áreas de operação seriam matemática, trigonometria, etc...

### Aplicações

As aplicações são escripts que exercem algum tipo de função, como uma repulsão absurda, criar um tornado, criar um exercito de mobs, etc...

### Sensores

Os sensores guardam iformações de interesse, como posição, estado e podem emitir um sinal no sistema ao acontecer uma ocorrência que não pode ser guardada, como a agressão de um mob por um jogador.

### Clientes

Eles são subprogramas independentes rodando dentro do datapack, eles são clientes dos sensores, por isso o nome, eles administram suas habilidades e suas coisas.

### Moderador

Ele roda no coração do datapack, fica principalmente no tick e load, ele organiza as coisas e controla o fluxo, lida com timers e etc...

---

## Exemplo

Vamos supor um artefato chamado "bastão do vento" que é capaz de ejetar mobs ao jogador bater neles com ele na sua mão.

O bastão de vento terá seu próprio Cliente. Ao jogador bater em um mob com ele na mão o sensor irá berrar no sistema e sincronizar os dados guardados com os dados atuais do jogo, o cliente irá checar os requisitos para ser rodado:

Uma criatura foi agredida? Sim.
O agressor possui a posse do item? Sim.
Ele está com ele na mão? Sim.

Ok, então eu irei colocar a tag de identifição da habilidade no agressor e na vítima, rodar a habilidade de knokback e colocar na entrada um valor ridículo.

A habilidade recebe esse trabalho e dai roda a função auxiliar de determinar o ângulo entre duas entidades e recebe a saída, essa saída é colocada em outra função auxiliar que retorna o movimento horizontal e vertical desse ângulo, ela pega essa saída e multiplica pelo valor do impulso e aplica na entidade com a tag de vítima.