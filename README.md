# Documentação do Projeto - Guia de Motéis GO

![guia de moteis go](logo.png)

Link de apresentação do projeto:

https://drive.google.com/file/d/1a4JPOS7_hz2A_x3peLfR7mWlkZaWcMtU/view?usp=sharing

Este repositório é um teste técnico para a empresa **Guia de Motéis GO**. O projeto foi desenvolvido utilizando **Flutter**, gerenciado com o **Riverpod** para gerenciamento de estado e **http** para requisições de API.


## Dependências Utilizadas

O projeto utiliza as seguintes bibliotecas:

- `cupertino_icons`
- `http`
- `flutter_riverpod`
- `carousel_slider`
- `intl`

Essas dependências estão no arquivo `pubspec.yaml` e serão instaladas rodando o comando abaixo.

## Como Configurar o Ambiente

### 1. Instalar as Dependências

Antes de rodar o projeto, é necessário instalar as dependências. No terminal, dentro do diretório do projeto, rode o comando:

```sh
flutter pub get
```

Para que todas as bibliotecas necessárias para o projeto sejam baixadas e configuradas corretamente.

### 2. Executar o Emulador no VSCode

Se você estiver utilizando o **VSCode**, pode abrir a paleta de comandos pressionando:

```
CTRL + SHIFT + P
```

Em seguida, procure pelo comando ou digite **Flutter: Launch Emulator** e selecione um dispositivo.

Caso não tenha um emulador configurado, poderá ser utilizado o modelo abaixo:

- **Pixel 6 API 33** (Android)

Você pode configurar um novo emulador pelo **AVD Manager** do Android Studio ou via linha de comando usando:

```sh
flutter emulators --create --name=Pixel_6_API_33
flutter emulators --launch Pixel_6_API_33
```

### 3. Executar o Projeto

Com o emulador iniciado, rode o seguinte comando para iniciar o app:

```sh
flutter run
```

Ou vá no arquivo lib/main.dart e procure pelo botão **Run**, que fica logo em cima da função main,
para executar o projeto no emulador.

---

Caso tenha algum problema, verifique se o **Flutter** e o **Android SDK** estão corretamente instalados e configurados.

Para mais detalhes, consulte a [documentação oficial do Flutter](https://flutter.dev/docs).
