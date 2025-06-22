import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  var appGenerated = context.logger.progress('Generating flutter app');
  try {
    await _generateApp(context);
    appGenerated.complete('Flutter App generation Successful');
  } catch (e) {
    context.logger.err('Generation failed');
  }
}

Future<ProcessResult> _generateApp(HookContext context) async {
  context.logger.info('Running flutter create...');
  final projectName = context.vars['name'];
  final appDescription = context.vars['description'];
  final nameOrg = context.vars['org'];
  return Process.run('flutter', [
    'create',
    '.',
    '--project-name',
    '$projectName',
    '--description',
    '$appDescription',
    '--org',
    '$nameOrg',
  ]);
}
