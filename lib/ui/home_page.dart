import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/weathers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _cityController = TextEditingController();

  var _cityWeather ;
  var _displayWeather = "Waiting for your city entry";
  var urlPart1 = "http://api.weatherapi.com/v1/current.json?key=c9f4c4f140fb44bb8fa73934220203&q=";
  var urlPart2 = "&aqi=no";

  fetchData(String city) async {
    var url = Uri.parse(urlPart1 + city + urlPart2);
    final res = await http.get(url);

    if (res.statusCode == 200) {
      final Weathers weather = weathersFromJson(res.body);
      print(weather.location.country);
      _cityWeather = weather;
      return weather;
    }

    throw Exception("No response from server");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today's Weather"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Container(
        child: Card(
          child: Column(
            children: [
              TextFormField(
                controller: _cityController,
                decoration: InputDecoration(
                    hintText: "Enter city or town name",
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: "City",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: () async {
                    // Container data() {
                    //   return Container(
                    //     child: FutureBuilder<Weathers>(
                    //         future: fetchData("kisumu"),
                    //         builder: (context, snapshot) {
                    //           switch (snapshot.connectionState) {
                    //             case ConnectionState.active:
                    //             case ConnectionState.waiting:
                    //               return Center(
                    //                 child: CircularProgressIndicator(),
                    //               );
                    //             case ConnectionState.none:
                    //               return Center(
                    //                 child: Text("No connection!"),
                    //               );
                    //             case ConnectionState.done:
                    //               if (snapshot.hasError) {
                    //                 return Center(
                    //                     child: Text("Some Error Occurred"));
                    //               }else{
                    //               _displayWeather = snapshot.data!.location.country;
                    //               print(snapshot.data!.location.country);}
                    //               return Text("working");
                    //           }
                    //         }),
                    //   );
                    // }
                    // data();
                    fetchData(_cityController.text) ;
                    _displayWeather = _cityWeather.current.condition.text;
                    setState(() {});
                  },
                  child: Text("Check Weather")),
              Container(
                child: Text(_displayWeather),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
