import 'package:flutter/material.dart';

class BalaceCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  const BalaceCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Balance',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                Image.asset(
                  'lib/icons/solana.png',
                  height: 30,
                )
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              '\$$balance',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('**** $cardNumber',
                    style: const TextStyle(
                      color: Colors.white,
                    )),
                Text('$expiryMonth /$expiryYear',
                    style: const TextStyle(
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
