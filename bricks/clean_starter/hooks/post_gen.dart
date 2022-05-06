import 'dart:io';
import 'package:mason/mason.dart';

/**
 * Deletes all .gitkeep files inside of generated folder
 */

Future<void> run(HookContext context) async {
  var dir = Directory('.');

  await dir
      .list(recursive: true)
      .where((element) => element.toString().contains('.gitkeep'))
      .listen(
    (element) {
      context.logger.info('removing .gitkeep files ...');
      element.delete();
    },
    onDone: () => context.logger.info('Done!'),
  );
}
