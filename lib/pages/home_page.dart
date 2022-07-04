import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/balance_card.dart';
import 'package:walletappui/util/my_buttons.dart';
import 'package:walletappui/util/my_list_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.monetization_on, size: 38),
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.home, size: 32, color: Colors.pink[200])),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings, size: 32, color: Colors.grey)),
                ]),
          ),
        ),
        body: SafeArea(
          child: Column(children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: const [
                    Text(
                      'My',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' Cards',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.black,
                      ),
                    )
                  ]),
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add)),
                ],
              ),
            ),

            const SizedBox(height: 25.0),

            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  BalaceCard(
                    balance: 1223.00,
                    cardNumber: 1234,
                    expiryMonth: 12,
                    expiryYear: 23,
                    color: Colors.deepPurple[300],
                  ),
                  BalaceCard(
                    balance: 20563.00,
                    cardNumber: 4321,
                    expiryMonth: 02,
                    expiryYear: 23,
                    color: Colors.blue[300],
                  ),
                  BalaceCard(
                    balance: 3000.00,
                    cardNumber: 1243,
                    expiryMonth: 11,
                    expiryYear: 22,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            const SizedBox(height: 40.0),
            //3 buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyButton(
                    iconImagePath: 'lib/icons/send-money.png',
                    buttonText: 'Send'),
                MyButton(
                    iconImagePath: 'lib/icons/credit-card.png',
                    buttonText: 'Pay'),
                MyButton(
                    iconImagePath: 'lib/icons/bill.png', buttonText: 'Bills'),
              ],
            ),
            const SizedBox(height: 40.0),

            //column ->Stats + transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(children: const [
                MyListTitle(
                    iconImagePath: 'lib/icons/statistics.png',
                    title: 'Statistics',
                    subtitle: 'Payment & Income'),
                MyListTitle(
                    iconImagePath: 'lib/icons/transaction.png',
                    title: 'Transactions',
                    subtitle: 'Transaction History'),
              ]),
            )
          ]),
        ));
  }
}
