import 'package:flutter/material.dart';




enum WeatherCondition{
  Sunny,
  Rainy,
  Cloudy,
  Snowy,

  

}


void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('The Weather Forecast'),
        backgroundColor: Colors.pink[700], 

        
        
        
      ),

      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),

        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            WeatherForecast(
              minTemperature: '15\u00B0C',
              maxTemperature:'-3\u00B0C',
              DayofWeek: 'Sun', 
              condition: WeatherCondition.Sunny
              ),
            WeatherForecast(
              minTemperature: '12\u00B0C',
              maxTemperature:'7\u00B0C',
              DayofWeek: 'Mon', 
              condition: WeatherCondition.Rainy
              ),
            WeatherForecast(
              minTemperature: '9\u00B0C',
              maxTemperature:'7\u00B0C',
              DayofWeek: 'Tue', 
              condition: WeatherCondition.Snowy
              ),
             WeatherForecast(
              minTemperature: '8\u00B0C',
              maxTemperature:'-1\u00B0C',
              DayofWeek: 'Wed', 
              condition: WeatherCondition.Cloudy,
              ),
            WeatherForecast(
              minTemperature: '5\u00B0C',
              maxTemperature:'-2\u00B0C',
              DayofWeek: 'Thu', 
              condition: WeatherCondition.Snowy,
              ),
            WeatherForecast(
              minTemperature: '4\u00B0C',
              maxTemperature:'-4\u00B0C',
              DayofWeek: 'Fri', 
              condition: WeatherCondition.Sunny,
              ),
            WeatherForecast(
              minTemperature: '3\u00B0C',
              maxTemperature:'-3\u00B0C',
              DayofWeek: 'Sat', 
              condition: WeatherCondition.Sunny,
              ),
          ],
        ),
      ),
    
    ),

  ));
}

class WeatherForecast extends StatelessWidget {
  final String  minTemperature;
  final String maxTemperature;
  final String DayofWeek;
  final WeatherCondition condition;
  const WeatherForecast({
    required this.minTemperature,
    required this.maxTemperature,
    required this.DayofWeek,
    required this.condition,
    super.key,
  });
  // get icon of weather 
  IconData _getWeatherIcon(){
    switch(condition){
      case WeatherCondition.Sunny:
      return Icons.circle;
      case WeatherCondition.Rainy:
      return Icons.favorite_outline;
      case WeatherCondition.Cloudy:
      return Icons.cloud_outlined;
      case WeatherCondition.Snowy:
      return Icons.snowing;
    }
   
    
    }
    Color _getBackgroundColor(){
      switch(condition){
       case WeatherCondition.Sunny:
       return Colors.orange;
       case  WeatherCondition.Rainy:
        return Colors.grey;
       case WeatherCondition.Cloudy:
       return Colors.green;
       case WeatherCondition.Snowy:
       return Colors.pink;

      }
    }

    

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DayofWeek,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          

          ),
          SizedBox(height:20),
          Icon(
            _getWeatherIcon(),
            size: 80,
            color: _getBackgroundColor(),
          ),
          SizedBox(height:20),
          Text(
           '$minTemperature, $maxTemperature',
           style: const TextStyle(
            fontSize: 20,
           ),
           
          )
        ],
      ),

    
    );
  }
}
