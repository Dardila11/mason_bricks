# Clean Starter

Generate a Clean Architecture Structure Starter with dependency injection.

## Requirements

Make sure you have ```get_it``` added in your ```pubspec.yaml``` file

## Usage 🚀

This will overwrite your ```main.dart``` file because it will initialize ```di``` (dependency injection)

```sh
mason make clean_starter --on-conflict overwrite
```

run the following if you want to skip ```main.dart``` file

```sh
mason make clean_starter --on-conflict skip
```

## Output
```
|-- core
    |-- env
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
