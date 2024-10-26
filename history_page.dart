import 'package:flutter/material.dart';
import 'package:uts_hafizh/basic_widget/home_page.dart';
import 'package:uts_hafizh/basic_widget/inbox_page.dart';
import 'package:uts_hafizh/basic_widget/account_page.dart';
import 'package:uts_hafizh/basic_widget/bottom_navigation_widget.dart';

class Transaction {
  final String date;
  final String description;
  final double amount;
  final String time;
  final String payerName;

  Transaction({
    required this.date,
    required this.description,
    required this.amount,
    required this.time,
    required this.payerName,
  });
}

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  _TransactionHistoryPageState createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  int _currentIndex = 1;

  void _onTap(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });

      if (index == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      } else if (index == 1) {
        
      } else if (index == 2) {
       
      } else if (index == 3) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const InboxPage(),
            ),
          );
      } else if (index == 4) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const AccountPage(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Transaction History'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('This is the Pending Transactions')),
            DoneTab(), 
          ],
        ),
        bottomNavigationBar: BottomNavigationWidget(onTap: _onTap), 
      ),
    );
  }
}

class DoneTab extends StatelessWidget {
  const DoneTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(date: '2024-10-25', description: 'Top Up from Bank', amount: 100.0, time: '10:30 AM', payerName: 'Hafizh'),
      Transaction(date: '2024-10-24', description: 'Pay Merchant', amount: 50.0, time: '1:45 PM', payerName: 'Hafizh'),
      Transaction(date: '2024-10-23', description: 'Top Up from Bank', amount: 75.0, time: '3:15 PM', payerName: 'Hafizh'),
      Transaction(date: '2024-10-22', description: 'Pay Merchant', amount: 200.0, time: '9:00 AM', payerName: 'Hafizh'),
      Transaction(date: '2024-10-21', description: 'Top Up from Bank', amount: 150.0, time: '11:20 AM', payerName: 'Hafizh'),
      Transaction(date: '2024-10-20', description: 'Pay Merchant', amount: 80.0, time: '2:10 PM', payerName: 'Hafizh'),
      Transaction(date: '2024-10-19', description: 'Top Up from Bank', amount: 120.0, time: '4:00 PM', payerName: 'Hafizh'),
    ];

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: ListTile(
            title: Text(transaction.description),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date: ${transaction.date}'),
                Text('Time: ${transaction.time}'),
                Text('Payer: ${transaction.payerName}'),
              ],
            ),
            trailing: Text('\$${transaction.amount.toStringAsFixed(2)}'),
          ),
        );
      },
    );
  }
}
