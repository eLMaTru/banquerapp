import 'package:flutter/material.dart';

import 'package:la_banquera/src/com/hht/models/botes.dart';

import 'package:la_banquera/src/com/hht/service/botes_service.dart';

class BotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Botes> botes = BotesService().botes;
//
    return Container(
      height: 100.0,
      child: ListView.builder(
        itemCount: botes.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () => onNavigateToDetail(context, botes[index].id),
            focusColor: Theme.of(context).primaryColor,
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
                            "https://loteria-image.s3.amazonaws.com/logo-mega-millions-1.png",
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
                              'MegaMillions',
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
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ],
                ),
              ),
          );
        },
      ),
    );
  }

  void onNavigateToDetail(BuildContext ctx, String id) {
    Navigator.of(ctx).pushNamed('/lotteryDetails', arguments: id);
  }
}
