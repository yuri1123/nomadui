import 'package:flutter/material.dart';
import 'package:nomadflutter/worksCard.dart';

void main() {
  runApp(mainUI());
}

class mainUI extends StatelessWidget {
  mainUI({super.key});

  final Color _lightgreyColor = Color(0xFF626161);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yuri의 code',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF00010D),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/yuripic.png'),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MONDAY 16',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Rubik',
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'TODAY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 42,
                                  fontFamily: 'Rubik',
                                ),
                              ),
                              Text(
                                '·',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42),
                              ),
                              Text('17 18 19 20 21 22 23',
                                  style: TextStyle(
                                    color: _lightgreyColor,
                                    fontSize: 42,
                                    fontFamily: 'Rubik',
                                  ),
                                  overflow: TextOverflow.ellipsis),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    WorksCard(
                        name: 'DESIGN MEETING',
                        people: ['ALEX', 'HELLENA', 'NANA'],
                        start: {'11': '30'},
                        end: {'12': '20'},
                        color: Color(0xFFF2E852)),
                    const SizedBox(
                      height: 10,
                    ),
                    WorksCard(
                        name: 'DAILY PROJECT',
                        people: ['ME', 'RICHARD', 'CIRY','+4'],
                        start: {'12': '35'},
                        end: {'14': '10'},
                        color: Color(0xFF9D73D9)),
                    const SizedBox(
                      height: 10,
                    ),
                    WorksCard(
                      name: 'WEEKLY PLANNING',
                      people: ['DEN', 'NANA', 'MARK'],
                      start: {'15': '00'},
                      end: {'16': '30'},
                      color: Color(0xFFCFF250),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
