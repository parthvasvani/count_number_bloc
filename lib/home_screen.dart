import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print("reBuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, numCount) {
                return Text(
                  "${numCount}",
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton:
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(IncrementEvent());
          },
          child: Icon(Icons.add),
        ),
        const SizedBox(
          height: 12,
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(DecrementEvent());
          },
          child: Icon(Icons.remove),
        ),
        const SizedBox(
          height: 12,
        ),
        FloatingActionButton(
          onPressed: () {
            print("object");
            context.read<CounterBloc>().add(MultiplyEvent());
          },
          child: Icon(Icons.close),
        ),
        const SizedBox(
          height: 12,
        ),
        FloatingActionButton(
          onPressed: () {
            print("object");
            context.read<CounterBloc>().add(DivideEvent());
          },
          child: Icon(CupertinoIcons.divide),
        )
      ]),
    );
  }
}
