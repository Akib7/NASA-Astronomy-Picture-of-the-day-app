import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nasa_api_integration/Screens/resultView.dart';
import 'package:nasa_api_integration/models/NasaApodModel.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<NasaApodModel> fetchData() async {
    final response = await http.get(
      Uri.parse(
          'https://api.nasa.gov/planetary/apod?api_key=rRWezeVe20c4ct2F7hfYAYxEOMpQyD5SdFNUdufX'),
    );
    final dataModel = NasaApodModel.fromJson(jsonDecode(response.body));

    return dataModel;
  }

  @override
  void initState() {
    super.initState();
    nasaData = fetchData();
  }

  late Future<NasaApodModel> nasaData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("NASA Astronomy")),
        ),
        body: FutureBuilder<NasaApodModel>(
          future: nasaData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final result = snapshot.data!;
              return ResultView(result: result);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return Center(
              child: const CircularProgressIndicator(),
            );
          },
        ));
  }
}


