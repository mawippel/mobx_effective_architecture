# mobx_effective_architecture

An effective architecture for Flutter Apps using MobX

## Getting Started

Install the following VSCode Plugins:
```
Awesome Flutter Snippets
flutter_mobx
```

In your `settings.json` file, insert the following content:

```json
"files.exclude": {
    "**/*.g.dart": true,
}
```

Let the following command running in a background prompt, to generate de MobX files:
```shell
flutter pub run build_runner watch
```

TODO
- [x] Home page efetuando req http retornando uma lista
- [x] Loading na home page enquanto não retornou dados (modal_progress_hud)
- [x] Aparecer um dialog de sucesso da requisição HTTP
- [x] Aparecer um dialog de erro da requisição HTTP
- [x] Compartilhar o estado de telas, uma alterando a outra
- [ ] Usar o Hive para guardar o estado se já está logado ou não no app
- [ ] Descobrir se o usuário já está logado usando uma SplashScreen, e redirecioná-lo para a tela correta