import 'package:flutter/material.dart';
import 'package:la_banquera/src/com/hht/service/result_service.dart';

import '../models/result.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ResultsProvider with ChangeNotifier {
  List<Result> _results = [];
  var isLoading = false;

  List<Result> get results {
    return [..._results];
  }

  Result findById(String resultId) {
    return results.firstWhere((res) => res.id == resultId);
  }

  void addProduct() {
    ResultService().addResult();
    //Result result = _results[0];

    print('saving...');
    notifyListeners();
  }

  void emptyResultList() {
    _results = [];
   // notifyListeners();
  }

  Future<void> fetchResult() {
    isLoading = true;

    Future<List<Result>> results = ResultService().fetching();
    if (_results.isNotEmpty) {
      isLoading = false;
      return null;
    }
    return results.then((List<Result> res) {
      _results.addAll(res);
      isLoading = false;
      notifyListeners();
    });
  }



  Future<void> fetchResultByStatusAndType(String statusId, String typeId) {
    isLoading = true;

    Future<List<Result>> results = ResultService().fetchResultByStatusAndType(statusId, typeId);
    if (_results.isNotEmpty) {
      isLoading = false;
      return null;
    }
    return results.then((List<Result> res) {
      _results.addAll(res);
      isLoading = false;
      notifyListeners();
    });
  }
}

/*

[
    Result(
      logo: Utils().findCirNetworkLotteryImage(1),
      name: 'Mega Millions',
      type: 1,
      id: 'f172c5c4-d665-4f0f-80ea-5641f8abf093',
      drawingDate: DateTime.now(),
      winningNumbers: '02, 45, 61, 24, 02, 45, 61, 24, 20, 05, 2x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(2),
      id: "f272c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'PowerBall',
      drawingDate: DateTime.now(),
      type: 2,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(1),
      id: "f372c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'La Primera',
      drawingDate: DateTime.now(),
      type: 35,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(12),
      id: "f472c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'Quiniela Leidsa',
      drawingDate: DateTime.now(),
      type: 12,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(33),
      id: "f572c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'Ganamas',
      drawingDate: DateTime.now(),
      type: 33,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(4),
      id: "f672c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'LotoMas',
      drawingDate: DateTime.now(),
      type: 4,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(1),
      name: 'Mega Millions',
      type: 1,
      id: 'f772c5c4-d665-4f0f-80ea-5641f8abf093',
      drawingDate: DateTime.now(),
      winningNumbers: '02, 45, 61, 24, 20, 05, 2x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(2),
      id: "f872c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'PowerBall',
      drawingDate: DateTime.now(),
      type: 2,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(1),
      id: "f972c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'La Primera',
      drawingDate: DateTime.now(),
      type: 35,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(12),
      id: "f102c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'Quiniela Leidsa',
      drawingDate: DateTime.now(),
      type: 12,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(33),
      id: "f112c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'Ganamas',
      drawingDate: DateTime.now(),
      type: 33,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    ),
    Result(
      logo: Utils().findCirNetworkLotteryImage(4),
      id: "f122c5c4-d665-4f0f-80ea-5641f8abf094",
      name: 'LotoMas',
      drawingDate: DateTime.now(),
      type: 4,
      winningNumbers: '29, 47, 65, 69, 70, 07, 4x',
    )
  ]

*/
