import 'package:flutter/material.dart';

class BannerPromoWidget extends StatelessWidget {
  const BannerPromoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Text(
          'Bonus Saldo Rp50 rb dengan Mandiri',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
