import 'dart:io';
import 'package:mason/mason.dart';

/**
 * Deletes all .gitkeep files inside of generated folder
 */

Future<void> run(HookContext context) async {
  final filesRemoved = context.logger.progress('All files removed!');
  var dir = Directory('.');
  removeFiles(dir).listen((event) {
    context.logger.info(event);
  }, onDone: () => filesRemoved());
}

Stream<String> removeFiles(Directory dir) async* {
  var entities = await dir.list(recursive: true);
  await for (FileSystemEntity entity in entities) {
    if (entity.toString().contains('.gitkeep')) {
      await entity.delete();
      yield '.gitkeep file removed';
    }
  }
}
