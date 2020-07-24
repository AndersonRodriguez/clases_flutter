import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CustomRow(
                contentsWidgets: CustomWidgetRow(
                  fistWidget: Center(
                    child: Text('Hola'),
                  ),
                  secondWidget: Center(
                    child: Icon(
                      Icons.access_time,
                      size: 33,
                      color: Colors.white,
                    ),
                  ),
                  thirdWidget: Center(
                    child: Text('Hola'),
                  ),
                ),
              ),
              CustomRow(
                contentsWidgets: CustomWidgetRow(
                  fistWidget: Center(
                    child: Text('Hola'),
                  ),
                  secondWidget: Center(
                    child: Text('Hola'),
                  ),
                  thirdWidget: Center(
                    child: Text('Hola'),
                  ),
                ),
              ),
              CustomRow(
                contentsWidgets: CustomWidgetRow(
                  fistWidget: Center(
                    child: Text('Hola'),
                  ),
                  secondWidget: Center(
                    child: Text('Hola'),
                  ),
                  thirdWidget: Center(
                    child: Text('Hola'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final CustomWidgetRow contentsWidgets;

  const CustomRow({Key key, this.contentsWidgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxDecoration customBoxDecoration = BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 2),
    );

    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: customBoxDecoration,
              child: this.contentsWidgets.fistWidget,
            ),
          ),
          Expanded(
            child: Container(
              decoration: customBoxDecoration.copyWith(color: Colors.blue),
              child: this.contentsWidgets.secondWidget,
            ),
          ),
          Expanded(
            child: Container(
              decoration: customBoxDecoration.copyWith(color: Colors.yellow),
              child: this.contentsWidgets.thirdWidget,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomWidgetRow {
  Widget fistWidget;
  Widget secondWidget;
  Widget thirdWidget;

  CustomWidgetRow({this.fistWidget, this.secondWidget, this.thirdWidget});
}