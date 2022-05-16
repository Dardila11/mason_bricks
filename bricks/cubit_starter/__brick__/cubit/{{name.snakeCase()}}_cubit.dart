import 'package:bloc/bloc.dart';
{{#usingDartz}}import 'package:dartz/dartz.dart';{{/usingDartz}}
import 'package:equatable/equatable.dart';

part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  // inject usecase or repository and load it as parameter of cubit
  {{name.pascalCase()}}Cubit() : super({{name.pascalCase()}}Initial());
  {{^usingDartz}}
  void get{{name.pascalCase()}}() async {
    try {
      emit({{name.pascalCase()}}Loading());
      // request and add result as a parameter of {{name.pascalCase()}}Loaded
      final {{name.camelCase()}} = await // usecase / repository
      emit({{name.pascalCase()}}Loaded({{name.camelCase()}}));
    } catch (e) {
      emit({{name.pascalCase()}}Error(e.toString()));
    }
  }{{/usingDartz}}
    {{#usingDartz}}
    void get{{name.pascalCase()}}() async {
      emit({{name.pascalCase()}}Loading());
      final eitherFailureOr{{name.pascalCase()}} = await // usecase / repository
      emit(_failureOr{{name.pascalCase()}}(eitherFailureOr{{name.pascalCase()}}));
    }
    // Don't forget to change dynamics to your left and right types
    {{name.pascalCase()}}State _failureOr{{name.pascalCase()}}(
        Either<dynamic, dynamic> eitherFailureOr{{name.pascalCase()}}) {
      return eitherFailureOr{{name.pascalCase()}}.fold(
          (failure) => {{name.pascalCase()}}Error(failure.toString()),
          ({{name.camelCase()}}) => {{name.pascalCase()}}Loaded({{name.camelCase()}}));
    }{{/usingDartz}}
}