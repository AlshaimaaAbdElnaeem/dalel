import 'package:go_router/go_router.dart';

void customNavigtion(context, String path) => GoRouter.of(context).push(path);
