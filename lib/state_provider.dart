import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';


final counter = StateProvider<int>((ref){
  return 0;
});


class StateProviderExample extends ConsumerWidget {
  const StateProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counter);
    return Scaffold(
      appBar: AppBar(
        title: Text('State Provider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(count.toString(), style: TextStyle(fontSize: 35),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue)
                ),

                  onPressed: (){}, child: Text('+')),
              SizedBox(width: 50),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.blue)
                  ),

                  onPressed: (){}, child: Text('-')),
            ],
          )
        ],
      )
    );
  }
}
