import 'package:flutter/material.dart';
import '../providers/results_provider.dart';

import 'package:provider/provider.dart';
import '../models/result.dart';

import 'package:intl/intl.dart';

class ResultView extends StatefulWidget {
  @override
  _ResultViewState createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  bool _isInit = true;

  Future<void> _onRefreshResult(BuildContext context) {
  setState(() {

     Provider.of<ResultsProvider>(context,listen: false).emptyResultList();
    Provider.of<ResultsProvider>(context, listen: false).fetchResult();

  });
   
    return Future.value();
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<ResultsProvider>(context).fetchResult();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final resultData = Provider.of<ResultsProvider>(context);
    List<Result> results = resultData.results; //ResultService().fechtResults;
//
    return resultData.isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            height: 100.0,
            child: RefreshIndicator(
              onRefresh: () => _onRefreshResult(context),
              child: ListView.builder(
                itemCount: results.length,
                itemBuilder: (ctx, index) {
                  //   List<String> list = results[index].winningNumbers.split(",");

                  return InkWell(
                    onTap: () => onNavigateToDetail(context, results[index].id),
                    focusColor: Theme.of(context).primaryColor,
                    child: Card(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                        elevation: 5,
                        child: Column(
                          children: <Widget>[
                            /*     Container(
       
                          color: `
                              results[index].type == 4 ? Colors.yellow : Colors.white,
                          child: FadeInImage(
                              placeholder: AssetImage(
                                  Utils().findLotteryImage(results[index].type)),
                              image: AssetImage(
                                  Utils().findLotteryImage(results[index].type))),
                        ),*/
                            ListTile(
                              // isThreeLine: true,
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage(results[index].logo),
                                radius: 30,
                                child: Text(""),
                              ),
                              title: Container(
                                child: Text(results[index].name +
                                    " - " +
                                    DateFormat.yMMMd()
                                        .format(results[index].drawingDate)
                                        .toString()),
                              ),
                              subtitle: Container(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: convertCircleNumbers(
                                            results[index].winningNumbers),
                                      ))),
                              trailing: null,
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
          );
  }

  List<Container> convertCircleNumbers(String numbers) {
    List<String> list = numbers.split(",");
    List<Container> avatars = [];
    for (var item in list) {
      avatars.add(
        Container(
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 15.5,
            child: Center(
              child: Text(
                item,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          padding: EdgeInsets.only(top: 5, right: 3),
        ),
      );
    }

    return avatars;
  }

  void onNavigateToDetail(BuildContext ctx, String id) {
    Navigator.of(ctx).pushNamed('/lotteryDetails', arguments: id);
  }
}
