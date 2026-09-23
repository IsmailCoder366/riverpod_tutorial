import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


 /// Data Just to Read

final hello = Provider<String>((ref) {
  return 'hello ismail';
});


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greet = ref.watch(hello);
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Example'),
      ),
      body: Center(
        child: Text(greet.toString()),
      ),
    );
  }
}
