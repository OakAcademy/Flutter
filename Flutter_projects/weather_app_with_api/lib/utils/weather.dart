import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:weather_app_with_api/utils/location.dart';

const apiKey= "e937fc0150de2d7d1d102be6006570b9";
class WeatherDisplayData{
  Icon? weatherIcon;
  AssetImage? weatherImage;
  WeatherDisplayData({required this.weatherIcon,required this.weatherImage});

}
class WeatherData{
  WeatherData ({required this.locationHelper});
   LocationHelper locationHelper=LocationHelper();
  
  double? currentTemperature;
  int? currentCondition;
  Future<void> getCurrentTemperature() async{
    
    //Since the uri is expected in the get method,
    // we first perform the translation process with the parse method.
    // Then we can easily use this url in the get method.
    var url=Uri.parse
    ('https://api.openweathermap.org/data/2.5/weather?lat=${locationHelper.latitude}&lon=${locationHelper.longitude}&appid=${apiKey}&units=metric');
    Response response= await get(url);
      if(response.statusCode==200){
       String data=response.body;
       var currentWeather= jsonDecode(data);
       try {
        currentTemperature=currentWeather['main']['temp'];
        currentCondition=currentWeather['weather'][0]['id'];
       }catch(e){
        print(e);
       }
      }
      else{
        print('no value from api');
      }
  } WeatherDisplayData getWeatherDisplayData(){
    if(currentCondition!<600){
      return WeatherDisplayData(weatherIcon: 
      Icon(FontAwesomeIcons.cloud,
      size:60,
      color: Colors.white,),
       weatherImage:AssetImage('assets/images/rainy.jpg') );
    }
    else{
      var now= new DateTime.now();
      if(now.hour>=19){
        return WeatherDisplayData(weatherIcon: 
      Icon(FontAwesomeIcons.moon,
      size:60,
      color: Colors.white,),
       weatherImage:AssetImage('assets/images/night.jpg') );
      }
      else{
        return WeatherDisplayData(weatherIcon: 
      Icon(FontAwesomeIcons.sun,
      size:60,
      color: Colors.yellow,),
       weatherImage:AssetImage('assets/images/sunny.jpg') );
      }
    }
     
  }        
}