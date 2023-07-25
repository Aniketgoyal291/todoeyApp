import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'package:todoey_flutter/models/list_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ListProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(),
        home: TasksScreen(),
      ),
    );
  }
}
