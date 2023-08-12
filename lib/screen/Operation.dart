import 'package:flutter/material.dart';

class Operation extends StatefulWidget {
  @override
  State<Operation> createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  final t1 = TextEditingController();
  final t2 = TextEditingController();
  final f1 = GlobalKey<FormState>();
  final f2 = GlobalKey<FormState>();
  double total = 0;
  String message = "";
  String selectedOperation = '+';

  void calculate(BuildContext context) {
    if (t1.text.isEmpty || t2.text.isEmpty) {
      setState(() {
        message = "Aucune valeur à calculer";
        total = 0;
      });
    } else {
      setState(() {
        double num1 = double.parse(t1.text);
        double num2 = double.parse(t2.text);
        switch (selectedOperation) {
          case '+':
            total = num1 + num2;
            break;
          case '-':
            total = num1 - num2;
            break;
          case '/':
            total = num1 / num2;
            break;
          case '*':
            total = num1 * num2;
            break;
        }
        message = "";
        t1.text = "";
        t2.text = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operation"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'La somme',
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(15),
              child: Form(
                key: f1,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Taper un nombre",
                  ),
                  controller: t1,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(15),
              child: Form(
                key: f2,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Taper un nombre",
                  ),
                  controller: t2,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<String>(
                  value: '+',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value!;
                    });
                  },
                ),
                Text('+'),
                Radio<String>(
                  value: '-',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value!;
                    });
                  },
                ),
                Text('-'),
                Radio<String>(
                  value: '/',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value!;
                    });
                  },
                ),
                Text('/'),
                Radio<String>(
                  value: '*',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value!;
                    });
                  },
                ),
                Text('*'),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => calculate(context),
              child: Text('Calculer'),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Le total   '),
                Text(
                  total.toString(),
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
            Text(
              message,
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
