import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tasks/component/button_widget.dart';
import 'package:tasks/component/text_form_filed_widget.dart';
import 'package:tasks/component/text_widget.dart';
import 'package:tasks/constant/colors.dart';
import 'package:tasks/task3/screen/weather/controller/controller.dart';
import 'package:tasks/utils/utilis.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherApi weatherApi = WeatherApi();
  String city = '';
  Map<String, dynamic>? weatherData;

  void getWeather() async {
    try {
      final data = await weatherApi.getCurrentWeatherData(city);
      setState(() {
        weatherData = data;
      });
    } catch (e) {
      print('Error fetching weather data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primiry,
          centerTitle: true,
          title: const TextWidget(
              title: 'Weather App', fontSize: 16, fontWeight: FontWeight.w700)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              60.ph,
              TextFormFieldWidget(
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
                hintText: 'Enter City',
              ),
              60.ph,
              ButtonWidget(
                onTap: getWeather,
                title: 'Apply',
                width: 40,
              ),
              weatherData != null
                  ? Column(
                      children: [
                        32.ph,
                        Lottie.asset("assets/json/weather.json"),
                        TextWidget(
                          title: 'City: ${weatherData!['name']}',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                        TextWidget(
                          title: 'Temperature: ${weatherData!['main']['temp']}',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primiry,
                        ),
                        // Display other weather details here
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
