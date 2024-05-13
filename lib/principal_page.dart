import 'package:flutter/material.dart';
import 'package:livraria/widgets/livros_widget.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final controller = TextEditingController();

  void testando() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text(
                "Livros a venda",
                style: TextStyle(fontSize: 50),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    label: Text("Procure pelo nome"),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      splashRadius: 25,
                    ),
                    
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LivrosWidget(),
                  LivrosWidget(),
                  LivrosWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LivrosWidget(),
                  LivrosWidget(),
                  LivrosWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LivrosWidget(),
                  LivrosWidget(),
                  LivrosWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LivrosWidget(),
                  LivrosWidget(),
                  LivrosWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
