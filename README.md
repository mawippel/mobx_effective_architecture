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