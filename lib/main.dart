import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tasks/task1/screens/login/login_screen.dart';
import 'package:tasks/task2/screens/counter_app/counter_view.dart';
import 'package:tasks/task2/screens/counter_app/counter_view_model.dart';
import 'package:tasks/task2/screens/shopping_cart/cubit/shopping_cart_cubit.dart';
import 'package:tasks/task2/screens/shopping_cart/shopping_cart_screen.dart';
import 'package:tasks/task3/screen/posts_screen/posts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),

      ///Task 1
      // home: LoginScreen(),
      ///Task 2
      // home: ChangeNotifierProvider(
      //     create: (context) => CounterProvider(),
      //     child: CounterScreen()),
      // home: BlocProvider(
      //   create: (context) => CartCubit(),
      //   child: ShoppingCartScreen(),
      ///task3
      home:PostsScreen(),
    );
  }
}

