import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  static const String nameRoute = 'ui_screen';

  const UiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Ctrl'),
      ),
      body: const _BodyListView(),
    );
  }
}

class _BodyListView extends StatefulWidget {
  const _BodyListView({
    super.key,
  });

  @override
  State<_BodyListView> createState() => _BodyListViewState();
}

enum TravelOptions { car, boat, plane }

class _BodyListViewState extends State<_BodyListView> {
  bool ischanged = true;
  bool whitCash = true;

  TravelOptions selectedTransportation = TravelOptions.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Become Developer'),
          value: ischanged,
          onChanged: (value) {
            setState(() {
              ischanged = !ischanged;
            });
          },
        ),
        ExpansionTile(
          title: const Text('TravelOptions'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: const Text('Travel on car'),
              value: TravelOptions.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = TravelOptions.car;
                });
              },
            ),
            RadioListTile(
              title: const Text('Boat'),
              subtitle: const Text('Travel on Boat'),
              value: TravelOptions.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = TravelOptions.boat;
                });
              },
            ),
            RadioListTile(
              title: const Text('Plane'),
              subtitle: const Text('Travel on plane'),
              value: TravelOptions.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = TravelOptions.plane;
                });
              },
            ),
          ],
        )
      
      ,
      CheckboxListTile(
        title: const Text('¿Paga en efectivo?'),
        value: whitCash, 
        onChanged: (value) {
          setState(() {
            whitCash = !whitCash;
          });
        },)
      ],
    );
  }
}
