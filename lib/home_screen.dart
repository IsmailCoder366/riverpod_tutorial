import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/slider_provider.dart';




class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  final sliderValue = ref.watch(sliderProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(.5),
          ),
          Slider(value: sliderValue, onChanged: (value){

          })
          
        ],
      ),
    );
  }
}
