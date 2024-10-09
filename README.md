# SDK видеоплеера Yandex Cloud Video для iOS

Вы можете добавить [видеоплеер](https://yandex.cloud/ru/docs/video/concepts/player) с контентом из Cloud Video в ваше мобильное приложение для iOS. Для этого воспользуйтесь SDK видеоплеера.

Чтобы использовать SDK, вам понадобится установленная и настроенная среда разработки [Xcode](https://developer.apple.com/xcode/) версии 15.3 или выше с языком программирования [Swift](https://www.swift.org/install/macos/) версии 5.8 или выше.

## Подключение библиотеки SDK видеоплеера

Вы можете подключить библиотеки SDK видеоплеера с помощью [Xcode SPM](#xcode-spm) или в [Package.swift](#packageswift).

### Xcode SPM

1. В окне Xcode навигатора проектов (**Project Navigator**) выберите свой проект. 
1. На верхней панели нажмите **File** и выберите **Add Package Dependencies...**
1. В строке поиска введите `https://github.com/yandex-cloud/cloud-video-player-ios-sdk/` и выберите пакет `cloud-video-player-ios-sdk`.
1. В поле **Dependency Rule** выберите **Up to Next Major Version** и укажите версию `0.1.0-beta`.
1. В поле **Add to Project** выберите проект, к которому вы хотите подключить библиотеки, и нажмите **Add Package**.
1. Во всплывающем окне укажите, к какому таргету в проекте подключить библиотеки, и нажмите **Add Package**.
      
    Пакет содержит следующие библиотеки:
    * `CloudVideoPlayer` — основная библиотека SDK видеоплеера для iOS.
    * `CloudVideoPlayerUI` — дополнительная библиотека с набором интерфейсных элементов (оболочка видеоплеера).

### Package.swift

1. В окне Xcode навигатора проектов (**Project Navigator**) выберите свой проект.
1. Откройте `Package.swift`.
1. Добавьте в массив `dependencies` следующую зависимость:

    ```swift
    dependencies: [
      .package(
        url: "https://github.com/yandex-cloud/cloud-video-player-ios-sdk/",
        from: "0.1.0-beta"
      )
    ],
    ```

1. Добавьте библиотеки в массив `dependencies` конкретного таргета:

    ```swift
    .target(
      name: "MyTargetName",
      dependencies: [
        .product(name: "CloudVideoPlayer", package: "cloud-video-player-ios-sdk"),
        .product(name: "CloudVideoPlayerUI", package: "cloud-video-player-ios-sdk")
      ]
    ),
    ```

    Где:
    * `CloudVideoPlayer` — основная библиотека SDK видеоплеера для iOS.
    * `CloudVideoPlayerUI` — дополнительная библиотека с набором интерфейсных элементов (оболочка видеоплеера).

1. Сохраните изменения.

## Импорт библиотек

Чтобы импортировать библиотеки, добавьте в файл с кодом следующие строки:

```swift
import CloudVideoPlayer
import CloudVideoPlayerUI
```

Подробности об использовании SDK видеоплеера для iOS и примеры кода см. в документации [Yandex Cloud Video](https://yandex.cloud/ru/docs/video/sdk/ios-sdk).