import 'package:flutter/material.dart';
import 'package:nomadui1/widgets/button.dart';
import 'package:nomadui1/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Nomad code',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Yuri',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text('Welcome back!',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 22)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 22),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$5 194 482',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 44),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: 'Transfer',
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black,
                        ),
                        Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text('View All',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                              // fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CurrencyCard(
                        name: 'Euro',
                        amount: '6 428',
                        code: 'EUR',
                        icon: Icons.euro_rounded,
                    isInverted: false,),
                    Transform.translate(
                      offset: Offset(0,-20),
                      child: CurrencyCard(
                          name: 'Bitcoin',
                          amount: '9 785',
                          code: 'BTC',
                          icon: Icons.currency_bitcoin,
                      isInverted: true,),
                    ),



                    Transform.translate(
                      offset: Offset(0,-40),
                      child: CurrencyCard(
                        name: 'Dollar',
                        amount: '428',
                        code: 'USD',
                        icon: Icons.money,
                        isInverted: false,),
                    ),
              
                  ],
                ),
              ),
            )));
  }
}
