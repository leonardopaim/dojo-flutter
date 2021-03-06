# Coding Dojo Flutter

![enter image description here](https://flutter.io/assets/flutter-lockup-4cb0ee072ab312e59784d9fbf4fb7ad42688a7fdaea1270ccf6bbf4f34b7e03f.svg)

## O que é Flutter?
Flutter é um Framework UI criado pela Google que nasceu com o objetivo de facilitar o desenvolvimento de aplicativos para Android e iOS, entregando interfaces bonitas e performáticas utilizando uma única base de código.

Foi lançado no ano de 2017 e saiu da versão beta já no ano de 2018 mostrando assim o empenho da empresa em entregar uma ferramenta de qualidade que atendesse bem os maiores sistemas operacionais mobile da atualidade.

Vem se destacando e apesar de ainda ser menos utilizado é um concorrente direto do [React Native](https://facebook.github.io/react-native/) do  Facebook.


## Características
 - **Desenvolvimento rápido:**
 O Flutter possui um conjunto amplo de Widgets (componentes) já prontos que abstraem os aspectos da plataforma, trazendo assim uma experiencia de uso muito fiel ao que o usuário já utiliza.
 
 - **Excelente Desempenho:**
 A arquitetura sob o qual o Flutter foi criado permitiu um ganho considerável em performance. O motivo é que ele gera um código muito próximo ao nativo que a plataforma entende sem a necessidade de fazer nenhuma ponte de conversão. Isso beneficia por exemplo as animações que podem rodar a 60 fps.

- **Stateful Hot Reload:**
O Hot Reload é uma característica conhecida e elogiada pela comunidade de desenvolvimento e que está presente em diversos frameworks da atualidade fazendo o processo de atualização de layout rapidamente ao salvar a alteração do código. Além disso, a característica "stateful" do Flutter faz com que o aplicativo não seja inteiramente recarregado, apenas a parte alterada no código é alterada nele.

- **Linguagem Dart:**
O desenvolvimento com o Flutter é feito utilizando a linguagem de programação Dart. Ela foi desenvolvida também pela Google. Em 2011 foi o seu lançamento, em 2013 chegou na versão 1.0 e no ano de 2018 com a crescente do Flutter chegou a versão 2.0. O Dart tem referencias ao C# e ao Java e com uma excelente abordagem de Orientação a Objetos. Mesmo se tratando de uma nova linguagem, engana-se quem considera complexa e difícil sua compreensão.

- **Integração com diversos editores de código:**
Atualmente o desenvolvimento para o Dart/Flutter pode ser feito no [VSCode](https://code.visualstudio.com/), [IntelliJ IDEA](https://www.jetbrains.com/idea/), [Android Studio](https://developer.android.com/studio/?gclid=CjwKCAiA767jBRBqEiwAGdAOr9m7tRrC9Zbj4fRVa-xe2d1tGwZ_CUofyLrQmwGKTPv9LAMoGi1HExoCxmUQAvD_BwE) e no [XCode](https://developer.apple.com/xcode/). Todos eles possuem uma excelente integração com a programação para o Flutter.

- **Evolução do Framework:**
No evento de lançamento da versão 1.0 do Flutter foi anunciado, dentre inúmeras features, a possibilidade de se criar aplicações para Web e também para Desktops. Mesmo estes projetos não estando em uma fase de utilização de produção, mostra que existe uma grande ambição para o Flutter.
Outro ponto que Vale ser destacado é que existem rumores de que a Google tem planos para substituir o Android por um novo sistema operacional que está sendo chamado de Fuchsia. E o Flutter seria o framework oficial para esta nova plataforma que está sendo projetada para ser utilizada em diversos ambientes. 


## Links Oficiais

 - [x] Página oficial do Flutter: https://flutter.dev/
 - [x] Página oficial do Dart: https://www.dartlang.org/
 - [x] Página de pacotes para o Flutter: https://pub.dartlang.org/flutter
 - [x] Repositório Flutter no Github: https://github.com/flutter/flutter

 
# Codificação

**1. Estrutura do projeto:**

 - Pastas de cada plataforma. Onde ficam os arquivos particulares de cada uma delas. Também existem nos projetos do React Native.
 - Pasta "Lib", onde ficam os arquivos ".dart" que são codificados.
 - Arquivo "main.dart" que é o principal arquivo do código e contém o entry point da aplicação.
 - Arquivo "pubspec.yaml" que é o arquivo que contém a configuração do projeto e os arquivos que ele utilizará.

 **2. Widgets:**

- Tudo no Flutter é Widget. Com a abordagem de modularização foi criado este termo para representar cada componente do Framework. Assim temos como exemplos de Widget's um texto, um botão, uma linha, uma coluna, um estilo de texto e também a própria aplicação em si.

- Widgets Stateless. São o tipo de widget que não tem estado. Sendo assim após ser construido ele não pode ser modificado.

- Widgets Stateful. São os tipos de widgets que tem um controle para alteração de estado.
