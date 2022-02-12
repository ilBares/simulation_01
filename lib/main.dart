import 'package:flutter/material.dart';
import 'car.dart';

void main() => runApp(const SimulationApp());

class SimulationApp extends StatelessWidget {
  const SimulationApp({Key? key}) : super(key: key);

  final List<Car> cars = const [
    Car('Mini Cooper D', 'FB880FY', 'black', 2016),
    Car('Mini Cooper D', 'FB880FY', 'black', 2016),
    Car('Mini Cooper D', 'FB880FY', 'black', 2016),
    Car('Mini Cooper D', 'FB880FY', 'black', 2016),
    Car('Mini Cooper D', 'FB880FY', 'black', 2016),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              '5F ITT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) => _buildItem(cars[index]),
        ),
      ),
    );
  }

  Widget _buildItem(Car car) {
    return Card(
      // margin non richiesto
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text(
                  'Model:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  car.model,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Plate:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  car.plate,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Color:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  car.color,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Year:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('${car.year}',
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
