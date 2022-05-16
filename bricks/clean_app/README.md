# Clean App

Generates a Flutter app with Clean Architecture Structure and dependency injection.

## Requirements

- Must have Flutter installed in your machine
## Usage 🚀

```sh
mason make clean_app
```

## Variables ✨

| Variable        | Description                | Default                                        | Type     |
| --------------- | -------------------------- | ---------                                      | -------- |
| `name`          | Name of the app            | `clean_app`                                    | `string` |
| `description`   | Description of the app     | `Flutter app starter with a clean architecture structure`                                      | `string` |
| `org`           | Name of your organization  | `com.example`                                  | `string` |

## Output 📦

A flutter app with the following structure in the ```lib``` folder

```sh
|-- core
    |-- env
    |-- theme
        |- theme.dart
    |-- errors
        |-- exceptions.dart
        |-- failure.dart
|-- data
    |-- datasources
    |-- models
    |-- repositories
|-- domain
    |-- entities
    |-- repositories
    |-- usecases
|-- features
    |-- views
    |-- widgets
|-- di.dart
|-- main.dart
```
