# mobx_effective_architecture

An effective architecture for Flutter Apps using MobX

## Getting Started

#### Recommended MobX Tutorials

(EN) [Flutter: State Management with Mobx](https://www.youtube.com/watch?v=p-MUBLOEkCs)

(EN) [MobX Docs](https://github.com/mobxjs/mobx.dart/blob/master/README.md)

(PT) [MobX Docs](https://github.com/mobxjs/mobx.dart/tree/master/translation/pt-BR)

(PT) [Flutterando's MobX Playlist](https://www.youtube.com/watch?v=kKNIaqZE8CY&list=PLlBnICoI-g-foW-Osr0PlpE1_AD3aItbZ&pbjreload=10)

#### Prepare you environment

Install the following VSCode Plugins:
```
Awesome Flutter Snippets
flutter_mobx
```

Leave the following command running in a background prompt, to generate the MobX/JsonSerializable files:
```shell
flutter pub run build_runner watch
```

In your `settings.json` file, insert the following content:

```json
"files.exclude": {
    "**/*.g.dart": true,
}
```

Create the `.env` file, based on `.env.example`.

# Wiki

- **[Introduction](#introduction)**
- **[Features](#features)**
- **[Scaffolding](#scaffolding)**
- **[Third-Party Libraries](#Third-Party-Libraries)**
- **[Lint](#lint)**
- **[Contributors](#contributors)**

## Introduction

This project aims to help developers who are starting a new project in Flutter, using MobX to manage the state. MobX is a state-management library that makes it simple to connect the reactive data of your application with the UI. As a developer, you focus purely with on the data that will be consumed by the UI, without worrying about keeping the two in sync.

This application was developed to contain examples of features that are usually needed in apps, as well as features that we had difficulty implementing during our App development journey in Flutter.

## Features

#### Splash Page
The Splash Page loads data used as the basis for the application, checks the existence of a User Token and validate whether the user has ever logged into the App.

#### Login Page
Login Page, it has reactive form validation and User Token storage on the device's local database.

#### Joke Page
The application's home page, makes HTTP requests for a joke API to exemplify the rendering of a Loading component, as well as an in-App notification presenting the success of the request.
This page also exemplifies Navigation to other pages, along with the presentation of a Dialog, both without using Context.

#### Add Custom Joke Page
Exemplifies the state sharing between two totally independent pages.

## Scaffolding

Core concepts for this project's structure

1. Sub-packages should not introduce new concepts, just more details
2. Packages should reflect business-concepts, not technical ones

Explanation of this project's folders:

`lib\components`: Helper Widgets that will be used throughout the whole app

`lib\domain`: All classes that are inside a specific 'domain', considering the business-concepts

`lib\shared`: Classes that are shared throughout more than one domain

`lib\utils`: Helper classes

## Third-Party Libraries

  `firebase_analytics`: Plugin to use the Google Analytics for Firebase, an app measurement solution that provides insight on app usage and user engagement on Android and iOS

  `firebase_crashlytics`: Plugin for Firebase Crashlytics. It reports uncaught errors to the Firebase console

  `flutter_dotenv`: Used to configure any flutter application with global variables using a `.env` file

  `mobx` and `flutter_mobx`: Libraries to reactively manage the state of the application

  `get`: Navigation library that lets you navigate between screens, open dialogs, and display snackbars easily with no context

  `get_it`: Service Locator that allows to "inject dependencies" and request them everywhere in your App. It can be used instead of `InheritedWidget` or `Provider`

  `hive`: Key-value database. Strongly encrypted using AES-256. Faster than `Shared Preferences` and `SQLite`

  `json_annotation`: Library used to generate code for JSON serialization and deserialization

  `modal_progress_hud`: A modal progress indicator widget. Wrap around another widget to block access to widget during an async call

  `oktoast`: Toast library to provide in-app toast notifications

## Lint

This project already has a configured Lint, based on some of the rules of [Effective Dart: Style](https://dart.dev/guides/language/effective-dart/style)

You can enable/disable rules whenever you want, depending on your needs. To do so adjust your `analysis_options.yaml`.

You can check some rules [here](https://dart-lang.github.io/linter/lints/).

## Contributors

[![All Contributors](https://img.shields.io/badge/all_contributors-3-orange.svg?style=flat-square)](#contributors-)

Thanks goes to these wonderful people:
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/mawippel"><img src="https://avatars1.githubusercontent.com/u/37195917?s=460&v=4" width="64px;" alt="" />
            <br /><sub><b>Marcelo Wippel</b></sub></a>
            <br /><a title="Code" href="#ideas-katis">💻</a> <a title="Documentation" href="#ideas-katis">📖</a> <a title="Reviewed Pull Requests" href="#ideas-katis">👀</a>
        </td>
        <td align="center">
            <a href="https://github.com/kmvbatista"><img src="https://avatars1.githubusercontent.com/u/50305552?s=460&v=4" width="64px;" alt="" />
            <br /><sub><b>Kennedy Batista</b></sub></a>
            <br /><a href="#ideas-katis" title="Ideas, & Feedback">🤔</a>
        </td>
        <td align="center">
            <a href="https://github.com/evandropomatti"><img src="https://avatars2.githubusercontent.com/u/6530769?s=460&v=4" width="64px;" alt="" />
            <br /><sub><b>Evandro Pomatti</b></sub></a>
            <br /><a href="#ideas-katis" title="Ideas, & Feedback">🤔</a>
        </td>
    </tr>
</table>