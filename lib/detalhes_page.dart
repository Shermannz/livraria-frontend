import 'package:flutter/material.dart';

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({super.key});

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
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAllPFjGNTDIw12Rr426PsDF1ZjIqveIBcUKS5Mh_uAQ&s",
                ),
                height: 300,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Senhor dos aneis",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'R\$ 5.000,00',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Comprar",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF008584), fixedSize: Size(200, 40)),
              ),
            ],
          ),
        ));
  }
}
