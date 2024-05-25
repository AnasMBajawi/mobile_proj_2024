import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BudgetDetailScreen(),
    );
  }
}

class BudgetDetailScreen extends StatelessWidget {
  const BudgetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A2E36),
      appBar: AppBar(
        title: const Text('Hello user',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF27FB6B),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xFF27FB6B),
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total tickets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '3 ticktes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount \$200',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4, // Number of transactions
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF125868),
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(Icons.monetization_on,
                                  color: Colors.white),
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Parking Ticket',
                                    style: TextStyle(color: Color(0xFFFFFFFF))),
                                Text('Location: Amman, Mecca St.',
                                    style: TextStyle(color: Color(0xFFFFFFFF))),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$50.00',
                              style: TextStyle(color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              'Tues. 15, 4:32',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        ElevatedButton(
                          onPressed: () {}, // Removed functionality
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF27FB6B), // Text color
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            textStyle: const TextStyle(fontSize: 14, fontWeight:FontWeight.bold),
                          ),
                          child: const Text('Pay'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
