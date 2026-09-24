import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/slider_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('built');
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(

            builder: (context, ref, child){
              final sliderValue = ref.watch(sliderProvider);

              print('build1');
              return Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(sliderValue),
              );
            }
          ),
          Consumer(

              builder: (context, ref, child){
                final sliderValue = ref.watch(sliderProvider);

                print('build');
                return Slider(
                  value: ref.watch(sliderProvider),
                  onChanged: (value) {
                    ref.read(sliderProvider.notifier).state = value;
                  },
                );
              }
          ),

        ],
      ),
    );
  }
}
