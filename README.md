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

# Wiki

- **[Introduction](#introduction)**
- **[Scaffolding](#contributing)**
- **[Third-Party Libraries](#core-concepts)**
- **[Lint](#core-concepts)**

## Introduction

This project aims to help developers who are starting a new project in Flutter, using MobX to manage the state. MobX is a state-management library that makes it simple to connect the reactive data of your application with the UI. As a developer, you focus only be with the data that will be consumed by the UI, without worrying about keeping the two in sync.

This application was developed to contain examples of features that are usually needed in apps, as well as features that we had difficulty implementing during our App development journey in Flutter.

## App Content/Features

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

## Third-Party Libraries

  firebase_analytics
  firebase_crashlytics

  flutter_dotenv

  mobx
  flutter_mobx

  get
  get_it
  hive
  json_annotation
  modal_progress_hud
  oktoast

## Contributors ✨

[![All Contributors](https://img.shields.io/badge/all_contributors-3-orange.svg?style=flat-square)](#contributors-)

Thanks goes to these wonderful people:
<table>
    <tr>
        <td align="center">
            <a href="https://github.com/mawippel"><img src="https://avatars1.githubusercontent.com/u/37195917?s=460&v=4" width="64px;" alt="" />
            <br /><sub><b>Marcelo Wippel</b></sub></a>
            <br /><a title="Code">💻</a> <a title="Documentation">📖</a> <a title="Reviewed Pull Requests">👀</a>
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