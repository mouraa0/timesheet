import 'package:flutter/material.dart';

class TimerListPage extends StatelessWidget {
  const TimerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [Color(0xFF0C1D4D), Color(0xFF214ECC)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Timesheets',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      height: 40 / 32,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.16),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 24),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
