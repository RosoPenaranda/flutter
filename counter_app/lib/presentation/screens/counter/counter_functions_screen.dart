import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String clickText = 'Clicks';

  void updateCounter({int value = 1}) {
    if (value ==-1  && clickCounter == 0) return;
    setState(() {
      (value != 0) ? clickCounter += value : clickCounter = value;
      (clickCounter == 1) ? clickText = 'Click' : clickText = 'Clicks';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Counter Functions'), actions: [
          IconButton(
            onPressed: () => updateCounter(value: 0),
            icon: const Icon(Icons.refresh_rounded),
          ),
        ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text(clickText, style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment:  MainAxisAlignment.end,
          children:  [
            CustomButton(icon: Icons.refresh_outlined, onPressed: () => updateCounter(value: 0)),
            const SizedBox(height: 10),
            CustomButton(icon: Icons.exposure_minus_1_outlined,  onPressed: () => updateCounter(value: -1)),
            const SizedBox(height: 10),
            CustomButton(icon: Icons.plus_one,  onPressed: () => updateCounter()),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
