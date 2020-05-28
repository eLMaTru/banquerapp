import 'package:la_banquera/src/com/hht/models/result.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; //as convert;
import 'dart:async';

import 'package:la_banquera/src/com/hht/utils/utils.dart';

class ResultService {
  static const BASE_URL =
      "http://34.198.173.130/banca-online/v1/lottery-result";

  static const url = "https://labanqueradb.firebaseio.com/";

  static const resultColection = "result.json";

  List<Result> results = [];

  List<Result> get fechtResults {
    //  fetchAlbum();
    return List.of(results);
  }

  ResultService();
//
  Future<Result> fetchAlbum() async {
    String allLotteryResult =
        "http://34.198.173.130/banca-online/v1/general/all/lottery?statusId=1";
    String megaMillions =
        "http://34.198.173.130/banca-online/v1/americana/megamillion";
    String album = "https://jsonplaceholder.typicode.com/albums/1";

    final response = await http.get(allLotteryResult);

    if (response.statusCode == 202) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final Map<String, dynamic> responseBody = json.decode(response.body);
      String res = response.body;
      print(res);
      return Result(); //Album.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
    return null;
  }

  Future<void> addResult() async {
    Result result = fechtResults[1];
    final saveUrl = url + resultColection;

    final respose = await http.post(saveUrl,
        body: json.encode({
          'logo': result.logo,
          'name': result.name,
          'date': result.drawingDate.toString(),
          'numbers': result.winningNumbers,
          'type': result.type
        }));
  }

  Future<List<Result>> fetching() async {
     final List<Result> results = [];
    final getUrl = url + resultColection;
    try {
      final response = await http.get(
        BASE_URL + "?statusId=1&typeId=0",
      );

      final extractData = json.decode(response.body) as List<dynamic>;
     
      extractData.forEach((res) {
        results.add(Result(
            id: res['id'],
            logo: Utils().findCirLotteryImage(res['lotteryTypeId']),
            type: res['lotteryTypeId'],
            name: Utils().getNameByType(res['lotteryTypeId']),
            winningNumbers: res['winningNumbers'],
            drawingDate: DateTime.parse(res['drawingDate'])));
      });
    } catch (error) {
      print(error);
    }

    return results;
  }


    Future<List<Result>> fetchResultByStatusAndType(String statusId, String typeId) async {
     final List<Result> results = [];
    final getUrl = url + resultColection;
    try {
      final response = await http.get(
        BASE_URL + "?statusId=" + statusId +"&typeId="+typeId,
      );

      final extractData = json.decode(response.body) as List<dynamic>;
     
      extractData.forEach((res) {
        results.add(Result(
            id: res['id'],
            logo: Utils().findCirLotteryImage(res['lotteryTypeId']),
            type: res['lotteryTypeId'],
            name: Utils().getNameByType(res['lotteryTypeId']),
            winningNumbers: res['winningNumbers'],
            drawingDate: DateTime.parse(res['drawingDate'])));
      });
    } catch (error) {
      print(error);
    }

    return results;
  }
}

/*
  Future<void> addResult() {
    Result result = fechtResults[1];
    final saveUrl = url + resultColection;

    return http
        .post(saveUrl,
            body: json.encode({
              'logo': result.logo,
              'name': result.name,
              'date': result.drawingDate.toString(),
              'numbers': result.winningNumbers,
              'type': result.type
            }))
        .then((response) {

      print(response.body + "\nSaved!");
      
    }).catchError((error) {
      print(error);
    });
  }*/
