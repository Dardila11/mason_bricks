import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  await _removeFiles(context, '.gitkeep');
  await _installDependencies(context);
  await _copyGeneratedFilesToLib(context);
}

Future<void> _removeFiles(HookContext context, String name) async {
  final removingFilesDone =
      context.logger.progress('removing .gitkeep files ...');
  var dir = Directory('.');
  await dir
      .list(recursive: true)
      .where((element) => element.toString().contains(name))
      .listen(
    (element) {
      element.delete();
    },
    onDone: () => removingFilesDone('.gitkeep files removed!'),
  );
}

Future<void> _installDependencies(HookContext context) async {
  final installDone = context.logger.progress('Installing dependencies...');
  var result = await Process.run('flutter', ['pub', 'add', 'get_it'],
      workingDirectory: './{{name}}');
  if (result.exitCode == 0) {
    installDone('Dependencies installed!');
  } else {
    context.logger.err(result.stderr);
  }
}

Future<void> _copyGeneratedFilesToLib(HookContext context) async {
  final done = context.logger.progress('Copying files to lib...');
  var result = await Process.run('mv', [
    'core',
    'data',
    'domain',
    'features',
    'di.dart',
    'main.dart',
    './{{name}}/lib/',
  ]);
  if (result.exitCode == 0) {
    done('Files copied successfully');
  } else {
    context.logger.err(result.stderr);
  }
}
