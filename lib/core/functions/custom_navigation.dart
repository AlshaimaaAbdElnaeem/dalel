import 'package:go_router/go_router.dart';

void customReplacementNavigtion(context, String path) => GoRouter.of(context).pushReplacement(path);
