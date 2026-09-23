import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final counter = StateProvider<int>((ref) {
  return 0;
});

final switchState = StateProvider<bool>((ref) {
  return false;
});

class StateProviderExample extends ConsumerWidget {
  const StateProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('State Provider Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          /// Count Value
          Consumer(
            builder: (context, ref, child) {
              final count = ref.watch(counter);
              return Center(
                child: Text(count.toString(), style: TextStyle(fontSize: 35)),
              );
            },
          ),
          SizedBox(height: 20),

          /// Toggle Switch Values
          Consumer(
            builder: (context, ref, child) {
              final switchvalue = ref.watch(switchState);
              return Switch(value: switchvalue, onChanged: (value){
                ref.read(switchState.notifier).state = value;
              });
            },
          ),

          /// Counter Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                ),

                onPressed: () {
                  ref.read(counter.notifier).state--;
                },
                child: Text('-'),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                ),

                onPressed: () {
                  ref.read(counter.notifier).state++;
                },
                child: Text('+'),
              ),
            ],
          ),
          SizedBox(height: 40),

        ],
      ),
    );
  }
}
