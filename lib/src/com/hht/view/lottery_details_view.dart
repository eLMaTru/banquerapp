import 'package:flutter/material.dart';
import 'package:la_banquera/src/com/hht/providers/results_provider.dart';
import 'package:la_banquera/src/com/hht/utils/utils.dart';
import 'package:provider/provider.dart';

import 'widgets/circle_numbers.dart';

class LotteryDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final resultId = ModalRoute.of(context).settings.arguments as String;
    final result = Provider.of<ResultsProvider>(context).findById(resultId);
    final results = Provider.of<ResultsProvider>(context)
        .fetchResultByStatusAndType("2", result.type.toString()) as List;

    return Scaffold(
        //    appBar: AppBar(
        //    title: Text(result.name),
        // ),
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        expandedHeight: 160,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            title:  Text(result.name),
            background: Image(
          width: double.infinity,
          image: AssetImage(
            Utils().findBigLotteryImage(
              result.type,
            ),
          ),
        )),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        Card(
          child: ListTile(
            leading: null,
            title: Center(
              child: CircleNumbers(
                numbers: result.winningNumbers,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text("Resultados anteriores", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 20),),
        ),
        SizedBox(
          height: 500,
        ),
        Text("La data"),
      ])),
    ]));
  }

  void viewDetails() {}
}

/*
InkWell(
              onTap: viewDetails,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
               // margin: EdgeInsets.all(10),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        
                           Image.network(
                            "https://loteria-image.s3.amazonaws.com/logo-powerball-1.png",
                            fit: BoxFit.cover,
                            height: 125,
                            width: double.infinity,
                          ),
                        
                      ],
                    ),
                    Text(
                      'PowerBall',
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              ),
            ),
InkWell(
              onTap: viewDetails,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            result.logo,
                            fit: BoxFit.cover,
                            height: 125,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                          left: 5,
                          bottom: 5,
                          child: Container(
                            width: 300,
                            color: Colors.black38,
                            child: Text(
                              result.name,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.schedule),
                              SizedBox(
                                width: 6,
                              ),
                              Text('30 m')
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.work),
                              SizedBox(
                                width: 6,
                              ),
                              Text('30 m')
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.monetization_on),
                              SizedBox(
                                width: 6,
                              ),
                              Text('30 m')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(result.name),
                    ),
                  ],
                ),
              ),
            ),
*/
