import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_app_flutter_clone/services/sorteador_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroSorteado = 0;
  var qtdSorteios = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro App Flutter", style: GoogleFonts.pacifico(),),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "tivemos até agora $qtdSorteios sorteio!",style: GoogleFonts.alef(fontSize: 60),),
           Text(numeroSorteado.toString(),style: GoogleFonts.alef(fontSize: 100),),
            Text(
              "o último número sorteado foi: ___",style: GoogleFonts.alef(fontSize: 50),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.monetization_on_outlined),
        onPressed: () {
          setState(() {
            qtdSorteios++;
            numeroSorteado = SorteadorService.sortearNumero();
          });
          debugPrint(numeroSorteado.toString());
        },
      ),
    );
  }
}
