import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import'package:clima/services/networking.dart';
const apiKey = '375b56cdae6fa9e495f7f717faa06834';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;
  @override
  void initState() {
    super.initState();
    getLocationData();

    }
    void getLocationData() async{
      Location location =new Location();
      await location.getCurrentLocation();
      latitude=location.latitude!;
      longitude = location.longitude!;
      NetworkHelper networkHelper = new NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

      var weatherData = await networkHelper.getData();
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationScreen(weatherData);
      }));
    }








  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
