import 'package:flutter/material.dart';

class StepDemo extends StatefulWidget {
  @override
  _StepDemoState createState() => _StepDemoState();
}

class _StepDemoState extends State<StepDemo> {
  List<Step> _steps = [
    new Step(
      title: Text('step1'),
      content: Text('content 1'),
      isActive: true,
    ),
    new Step(
      title: Text('step2'),
      content: Text('content 2'),
      isActive: true,
    ),
    new Step(
      title: Text('step3'),
      content: Text('content 3'),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      body: new Stepper(
        steps: _steps,
        type: StepperType.vertical,
      ),
    );
  }
}
