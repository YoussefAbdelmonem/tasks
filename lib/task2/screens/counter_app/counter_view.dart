
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/component/button_widget.dart';
import 'package:tasks/component/text_widget.dart';
import 'package:tasks/constant/colors.dart';
import 'package:tasks/task2/screens/counter_app/counter_view_model.dart';
import 'package:tasks/utils/utilis.dart';



class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: AppColors.primiry,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextWidget(
              title: 'Counter',
              fontSize: 18,
            ),
            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
                return TextWidget(
                  title: '${counterProvider.counter}',
                 fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: blackColor,
                );
              },
            ),
           20.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonWidget(
                  onTap: () {
                    Provider.of<CounterProvider>(context, listen: false).decrement();
                  },
                  child: TextWidget(title: 'Decrement',color: AppColors.white,),
                ),
                SizedBox(width: 20),
                ButtonWidget(
                  onTap: () {
                    Provider.of<CounterProvider>(context, listen: false).increment();
                  },
                  child: TextWidget(title:'Increment',color: AppColors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}