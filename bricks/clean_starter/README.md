# Clean Starter

Generate a Clean Architecture Structure Starter with dependency injection.

## Requirements

Make sure you have ```get_it``` added in your ```pubspec.yaml``` file

## Usage 🚀

In the root of your project run the following 

This will overwrite your ```main.dart``` file because it will initialize ```di``` (dependency injection)

```sh
mason make clean_starter -o lib/ --on-conflict overwrite
```

run the following if you want to skip ```main.dart``` file

```sh
mason make clean_starter -o lib/ --on-conflict skip
```

## Output
```sh
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
