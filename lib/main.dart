import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
void main() {
  runApp(const HooksCounter());
}

class HooksCounter extends HookWidget {
  const HooksCounter({super.key});
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hooks Increment"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You've pressed the button this many times:${counter.value}"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            counter.value++;
          },
          tooltip: "Increment",
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}
