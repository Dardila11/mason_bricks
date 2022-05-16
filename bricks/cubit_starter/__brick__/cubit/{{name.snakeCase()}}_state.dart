part of '{{name.snakeCase()}}_cubit.dart';

class {{name.pascalCase()}}State extends Equatable {

  const {{name.pascalCase()}}State();

  @override
  List<Object> get props => [];

}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Loaded extends {{name.pascalCase()}}State {
  // this in an example of the data you may have
  final dynamic {{name.camelCase()}};

  const {{name.pascalCase()}}Loaded(this.{{name.camelCase()}});
}

class {{name.pascalCase()}}Error extends {{name.pascalCase()}}State {
  final String message;

  const {{name.pascalCase()}}Error(this.message);

  @override
  List<Object> get props => [message];
}
