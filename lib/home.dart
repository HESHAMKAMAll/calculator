import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int result = 0 ;
  int num1 = 0 ;
  int num2 = 0 ;
  add(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 + num2;
    });
  }
  sub(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 - num2;
    });
  }
  divi(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 ~/ num2;
    });
  }
  mul(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 * num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
          title: const Text('Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:
          [
            Text(
              'Result : $result',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.pink
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                hintText: 'First Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                hintText: 'First Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  MaterialButton(onPressed: (){add();},color: Colors.orange, child: const Icon(Icons.add)),
                  const SizedBox(width: 20,),
                  MaterialButton(onPressed: (){sub();},color: Colors.orange, child: const Icon(Icons.remove)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children:
              [
                MaterialButton(onPressed: (){mul();},color: Colors.orange, child: const Text('*')),
                const SizedBox(width: 20,),
                MaterialButton(onPressed: (){divi();},color: Colors.orange, child: const Text('/')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
