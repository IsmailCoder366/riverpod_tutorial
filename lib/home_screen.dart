import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


 /// Data Just to Read
final hello = Provider<String>((ref) {
  return 'hello ismail';
});

final age = Provider<int>((ref){
  return 24;
});
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final greet = ref.watch(hello);
    final myAge = ref.watch(age);
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Example'),
      ),
      body: Center(
        child: Text(greet + ' I am  ' + myAge.toString(), style: TextStyle(fontSize: 35),),
      ),
    );
  }
}

//
// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final greet = ref.watch(hello);
//     final myAge = ref.watch(age);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Riverpod Example'),
//       ),
//       body: Center(
//         child: Text(greet + ' I am  ' + myAge.toString(), style: TextStyle(fontSize: 35),),
//       ),
//     );
//   }
// }
