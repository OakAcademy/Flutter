import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app_with_api/utils/weather.dart';

class MainScreen extends StatefulWidget {
  //const MainScreen({ Key? key }) : super(key: key);
  final WeatherData weatherData;
  MainScreen({ required this.weatherData});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? tempareture;
  AssetImage? backgroundImage;
  Icon? weatherDisplayIcon;


  updateDisplayInfo(WeatherData weatherData){
    setState(() {
      tempareture=weatherData.currentTemperature!.round();
      WeatherDisplayData weatherDisplayData=weatherData.getWeatherDisplayData();
      backgroundImage=weatherDisplayData.weatherImage;
      weatherDisplayIcon=weatherDisplayData.weatherIcon;
    });

  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo(widget.weatherData);
  }









  /* updateDisplayInfo(WeatherData weatherData){
    tempareture=weatherData.currentTemperature!.round();
    WeatherDisplayData weatherDisplayData=weatherData.getWeatherDisplayData();
    backgroundImage=weatherDisplayData.weatherImage;
    weatherDisplayIcon=weatherDisplayData.weatherIcon;

  } */

 /*  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo( widget.weatherData);
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image:DecorationImage(
            image: backgroundImage!,
            fit:BoxFit.cover) ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50,),
            Container(
              child:weatherDisplayIcon ,
              ),
            SizedBox(height: 10,),
            Center(child:Text('$tempareture°',
            style: TextStyle(color: Colors.white,
            fontSize: 60),))
          ],),),
        
    );
  }
}