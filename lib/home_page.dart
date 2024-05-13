import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe9e9e9),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 40, top: 40),
                decoration: BoxDecoration(
                    color: Color(0xFFf5f5f5),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "A MELHOR LIVRARIA DO BRASIL",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Com os melhores preços",
                      style: TextStyle(fontSize: 25),
                    ),
                    Icon(
                      Icons.book,
                      size: 80,
                    ),
                  ],
                ),
              ),
              TextFormField(
                controller: controller1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "O campo não pode estar em branco";
                  }
                  if (!RegExp(r'[A-Z]+[a-z]+').hasMatch(value)) {
                    return 'A primeira letra deve ser maiuscula e a segunda minuscula';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("Digite seu Nome"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: controller2,
                decoration: InputDecoration(
                  label: Text("Digite seu Sobrenome"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "O campo não pode estar em branco";
                  }
                  if (!RegExp(r'[A-Z]+[a-z]+').hasMatch(value)) {
                    return 'A primeira letra deve ser maiuscula e a segunda minuscula';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  var teste = formKey.currentState?.validate() ?? false;
                  if (teste) {
                    Navigator.of(context).pushNamed("/principal");
                    setState(() {
                      controller1.clear();
                      controller2.clear();
                    });
                  }
                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Formulario enviado com sucesso"),));
                },
                child: Text("Cadastrar"),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 50),
                  primary: Color(0xFF008584),
                  onPrimary: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    controller1.clear();
                    controller2.clear();
                  });
                  Navigator.of(context).pushNamed("/principal");
                },
                child: Text("Pular etapa de cadastro"),
                style: TextButton.styleFrom(
                  primary: Color(0xFF008584),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
