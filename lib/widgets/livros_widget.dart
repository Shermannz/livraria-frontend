import 'package:flutter/material.dart';

class LivrosWidget extends StatelessWidget {
  const LivrosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void retornar(BuildContext context, String nome) {
      Navigator.of(context).pushNamed("/${nome}");
    }

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Column(
        children: [
          Image(
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAllPFjGNTDIw12Rr426PsDF1ZjIqveIBcUKS5Mh_uAQ&s",
            ),
            height: 200,
          ),
          SizedBox(
            height: 5,
          ),
          Text("Senhor dos aneis"),
          Text('R\$ 5.000,00'),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {
              retornar(context, "detalhes");
            },
            child: Text("Comprar"),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF008584), fixedSize: Size(150, 40)),
          ),
        ],
      ),
    );
  }
}
