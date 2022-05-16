import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  var appGenerated = context.logger.progress('Generating flutter app');
  try {
    await _generateApp(context);
    appGenerated('Flutter App generation Successful');
  } catch (e) {
    context.logger.err('Generation failed');
  }
}

Future<ProcessResult> _generateApp(HookContext context) async {
  context.logger.info('Running flutter create...');
  var app_description = context.vars['description'];
  var name_org = context.vars['org'];
  return Process.run('flutter', [
    'create',
    '{{name}}',
    '--description',
    '$app_description',
    '--org',
    '$name_org'
  ]);
}
