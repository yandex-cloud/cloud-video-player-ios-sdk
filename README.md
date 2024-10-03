# SDK видеоплеера Yandex Cloud Video для iOS

Вы можете добавить [видеоплеер](https://yandex.cloud/ru/docs/video/concepts/player) с контентом из Cloud Video в ваше мобильное приложение для iOS. Для этого воспользуйтесь SDK видеоплеера.

Чтобы использовать SDK, вам понадобится установленная и настроенная среда разработки [Xcode](https://developer.apple.com/xcode/) версии 14.2 или выше с языком программирования [Swift](https://www.swift.org/install/macos/) версии 5.8 или выше.

## Подключение библиотеки SDK видеоплеера {#add-library}

{% list tabs group=programming_language %}

- Xcode SPM {#xcode-spm}

  1. В окне Xcode навигатора проектов (**Project Navigator**) выберите свой проект. 
  1. На верхней панели нажмите **File** и выберите **Add Package Dependencies...**
  1. В строке поиска ![image](../../_assets/console-icons/magnifier.svg) введите `https://github.com/yandex-cloud/cloud-video-player-ios-sdk/` и выберите пакет `cloud-video-player-ios-sdk`.
  1. В поле **Dependency Rule** выберите **Up to Next Major Version** и укажите версию `0.1.0-beta`.
  1. В поле **Add to Project** выберите проект, к которому вы хотите подключить библиотеки и нажмите **Add Package**.
  1. Во всплывающем окне укажите к какому таргету в проекте подключить библиотеки и нажмите **Add Package**. 
      
      Пакет содержит следующие библиотеки:
      * `CloudVideoPlayer` — основная библиотека SDK видеоплеера для iOS.
      * `CloudVideoPlayerUI` — дополнительная библиотека с набором интерфейсных элементов (оболочка видеоплеера).

- Package.swift {#package-swift}

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

{% endlist %}

{% if audience == "draft" %}

* `frameworks/YandexPlayerUtils.xcframework` — дополнительный фреймворк, обеспечивающий работу проекта демо-приложения. Не требуется при использовании основной библиотеки плеера `YandexPlayerSDK`.
* `ExampleSDK` — проект демо-приложения с интегрированным видеоплеером Cloud Video Player.

## Протестируйте SDK на демо-проекте {#demo}

Чтобы запустить демо-проект приложения с встроенным видеоплеером Cloud Video Player:

1. Запустите Xcode и откройте скачанный ранее демо-проект (`ExampleSDK/ExampleSDK.xcodeproj`).
1. Запустите проект.

    В результате в эмуляторе устройства будет запущено собранное демо-приложение с интегрированным видеоплеером Cloud Video Player.

{% endif %}

## Импорт библиотек {#import-library}

Чтобы импортировать библиотеки, добавьте в файл с кодом следующие строки:

```swift
import CloudVideoPlayer
import CloudVideoPlayerUI
```

Подробности об использовании SDK видеоплеера для iOS и примеры кода см. в документации [Yandex Cloud Video](https://yandex.cloud/ru/docs/video/sdk/ios-sdk).