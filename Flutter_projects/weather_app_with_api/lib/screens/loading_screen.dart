import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app_with_api/utils/location.dart';
import 'package:weather_app_with_api/utils/weather.dart';

import 'main_screen.dart';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({ Key? key }) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
   late LocationHelper locationData;
   Future<void> getLocationData() async{
     locationData= LocationHelper();
     await locationData.getCurrentLocation();
     if(locationData.latitude==null|| locationData.longitude==null){
      debugPrint('Location information not coming');
     }
     else{
      debugPrint('latitude: '+locationData.latitude.toString());
      debugPrint('longitude: '+locationData.longitude.toString());
     }
     }
     void getWeatherData() async{
      await getLocationData();
      WeatherData weatherData=WeatherData(locationHelper: locationData);
      await weatherData.getCurrentTemperature();
      if(weatherData.currentTemperature==null||
          weatherData.currentCondition==null){
            print('no value from api');
          }
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return MainScreen(weatherData:weatherData);
        }));
      
     }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getLocationData();
    getWeatherData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Colors.pink.shade200,Colors.purple.shade600])
      ),
      child:Center(child:SpinKitCircle(
        color:Colors.blue.shade200 ,
        size: 170,
        duration: Duration(milliseconds: 1500),) ,),));
  }
}