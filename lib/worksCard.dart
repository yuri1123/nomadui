import 'package:flutter/material.dart';

class WorksCard extends StatelessWidget {
  final String name;
  final Map<String, String> start;
  final Map<String, String> end;
  final List<String> people;
  final Color color;

  WorksCard({
    super.key,
    required this.name,
    required this.start,
    required this.end,
    required this.people,
    required this.color
  });

  final Color _blackColor = Color(0xFF00010D);
  final Color _greyColor = Color(0xFF7C7A7A);


  @override
  Widget build(BuildContext context) {
    String peopleNames = people.join('     ');
    String startm = start.keys.join('');
    String startd = start.values.join('');
    String endm = end.keys.join('');
    String endd = end.values.join('');

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(startm,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w800,
                              color: _blackColor,
                          height: 0.9,fontFamily: 'Rubik',)),
                      Text(startd,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: _blackColor,height: 0.9,fontFamily: 'Rubik',)),
                      Text('|',
                          style: TextStyle(
                              fontSize: 28,
                              color: _blackColor,fontFamily: 'Rubik',)),
                      Text(endm,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w800,
                              color: _blackColor,height: 0.9,fontFamily: 'Rubik',)),
                      Text(endd,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: _blackColor,height: 0.9,fontFamily: 'Rubik',)),
                    ],
                  )),
            ),
            // Expanded(flex: 1,child: Container(),),
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Column(
                  children: [
                    Text(name,
                        style: TextStyle(
                            fontSize: 56, height: 0.9, color: _blackColor,fontFamily: 'Rubik',)),
                    SizedBox(
                      height: 30,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(peopleNames.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: _greyColor,
                              fontWeight: FontWeight.bold,fontFamily: 'Rubik',)),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
