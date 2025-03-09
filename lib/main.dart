import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_bloc1/counter.dart';
import 'package:sample_bloc1/random_color.dart';
part 'main.g.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final Color color = ref.watch(randomColorProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('カウンター'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: TextStyle(color: color, fontSize: 60),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(randomColorProvider.notifier).randomColor();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.color_lens),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterProvider.notifier).resetCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.exposure_zero),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterProvider.notifier).decrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterProvider.notifier).incrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterProvider.notifier).multiplyCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}
